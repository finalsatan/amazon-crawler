package main

import (
	"fmt"
	"net/http"
	"strings"

	"github.com/PuerkitoBio/goquery"
	log "github.com/tengfei-xy/go-log"
)

type sellerStruct struct {
	url string
	id  string
}

const MYSQL_SELLER_STATUS_INSERT int = 0
const MYSQL_SELLER_STATUS_CHEKCK int = 1
const MYSQL_SELLER_STATUS_OVER int = 2
const MYSQL_SELLER_STATUS_ERROR_OVER int = 3
const MYSQL_SELLER_STATUS_NO_SELLER int = 4

func (seller *sellerStruct) main() error {
	if !app.Exec.Enable.Seller {
		log.Info("跳过 产品")
		return nil
	}

	app.update(MYSQL_APPLICATION_STATUS_SELLER)

	log.Infof("------------------------")
	log.Infof("2. 开始从产品页获取商家ID")
	r, err := app.db.Exec("UPDATE product SET status = ? ,app = ? WHERE (status = ? or status=?) and (app=? or app=?)  LIMIT 100", MYSQL_SELLER_STATUS_CHEKCK, app.Basic.App_id, MYSQL_SELLER_STATUS_INSERT, MYSQL_SELLER_STATUS_ERROR_OVER, 0, app.Basic.App_id)
	if err != nil {
		log.Errorf("更新product表失败,%v", err)
		return err
	}
	num, err := r.RowsAffected()
	if err != nil {
		log.Errorf("获取product表更新行数失败,%v", err)
		return err
	}
	log.Infof("本次需要更新:%d条", num)
	if num == 0 {
		sleep(120)
		return nil
	}
	row, err := app.db.Query(`select id,url,param from product where status=? and app = ?`, MYSQL_SELLER_STATUS_CHEKCK, app.Basic.App_id)
	if err != nil {
		log.Errorf("查询product表失败,%v", err)
		return err
	}
	for row.Next() {
		seller.id = ""
		var primary_id int64
		var url, param string
		if err := row.Scan(&primary_id, &url, &param); err != nil {
			log.Errorf("获取product表的值失败,%v", err)
			continue
		}

		url = AMAZON_UK + url + param
		log.Infof("查找商家链接 ID:%d url:%s", primary_id, url)
		err := seller.request(url)
		if err != nil {
			if err == ERROR_NOT_SELLER {
				seller.update_status(primary_id, MYSQL_SELLER_STATUS_NO_SELLER)
				continue
			} else if err == ERROR_NOT_404 || err == ERROR_NOT_503 || err == ERROR_VERIFICATION {
				seller.update_status(primary_id, MYSQL_SELLER_STATUS_ERROR_OVER)
				log.Error(err)
				sleep(300)
				continue
			} else {
				seller.update_status(primary_id, MYSQL_SELLER_STATUS_ERROR_OVER)
				log.Error(err)
				sleep(300)
				continue

			}
		}

		seller.get_seller_id()

		err = seller.insert_selll_id()
		if is_duplicate_entry(err) {
			log.Infof("店铺已存在 商家ID:%s", seller.id)
			err = nil
		}
		if err != nil {
			log.Error(err)
			continue
		}
		if err := seller.update_status(primary_id, MYSQL_SELLER_STATUS_OVER); err != nil {
			log.Error(err)
			continue
		}

	}
	log.Infof("2. 结束从产品页获取商家ID")
	log.Infof("------------------------")

	return nil
}

func (seller *sellerStruct) request(url string) error {

	// 	curl 'https://www.amazon.co.uk/iSTYLE-Practical-Functions-Monitoring-Waterproof/dp/B07X3GFNSZ/ref=sr_1_50?crid=2V9436DZJ6IJF&keywords=health+monitoring&qid=1700117509&sprefix=clothe%2Caps%2C552&sr=8-50' \
	//   -H 'device-memory: 8' \
	//   -H 'downlink: 1.5' \
	//   -H 'dpr: 2' \
	//   -H 'ect: 3g' \
	//   -H 'rtt: 350' \
	//   -H ': 1' \
	//   -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36' \
	//   -H 'viewport-width: 2048' \
	//   --compressed

	client := get_client()
	req, err := http.NewRequest("GET", url, nil)
	if err != nil {
		return err
	}
	req.Header.Set("Authority", `www.amazon.co.uk`)
	req.Header.Set("Accept", `text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7`)
	req.Header.Set("Accept-Language", `zh-CN,zh;q=0.9`)
	req.Header.Set("cache-control", `max-age=0`)
	req.Header.Set("device-memory", `8`)
	req.Header.Set("downlink", `1.5'`)
	req.Header.Set("dpr", `2`)
	req.Header.Set("ect", `3g`)
	req.Header.Set("rtt", `350`)
	if _, err := app.get_cookie(); err != nil {
		log.Error(err)
	} else {
		req.Header.Set("Cookie", app.cookie)
	}
	req.Header.Set("upgrade-insecure-requests", `1`)
	req.Header.Set("Referer", "https://www.amazon.co.uk/s?k=Hardware+electricia%27n&crid=3CR8DCX0B3L5U&sprefix=hardware+electricia%27n%2Caps%2C714&ref=nb_sb_noss")
	req.Header.Set("Sec-Fetch-Dest", `empty`)
	req.Header.Set("Sec-Fetch-Mode", `cors`)
	req.Header.Set("Sec-Fetch-Site", `same-origin`)
	req.Header.Set("User-Agent", `Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36`)
	req.Header.Set("sec-ch-ua", `"Not.A/Brand";v="8", "Chromium";v="114", "Google Chrome";v="114"`)
	req.Header.Set("sec-ch-ua-mobile", `?0`)
	req.Header.Set("sec-ch-ua-platform", `"macOS"`)

	resp, err := client.Do(req)
	if err != nil {
		log.Errorf("内部错误:%v", err)
		return err

	}
	defer resp.Body.Close()

	if resp.StatusCode != 200 {
		log.Errorf("状态码:%d", resp.StatusCode)
		return err
	}

	doc, err := goquery.NewDocumentFromReader(resp.Body)
	if err != nil {
		return fmt.Errorf("内部错误:%v", err)
	}

	res := doc.Find("a[id=sellerProfileTriggerId]").First()
	url, exist := res.Attr("href")
	if exist {
		seller.url = url
		return nil
	}
	if doc.Find("h4").First().Text() == "Enter the characters you see below" {
		return ERROR_VERIFICATION
	}
	return ERROR_NOT_SELLER
}
func (seller *sellerStruct) get_seller_id() string {
	for _, j := range strings.Split(seller.url, "&") {
		if strings.HasPrefix(j, "seller=") {
			seller.id = strings.Split(j, "seller=")[1]
		}
	}
	// if ( seller.id=="")
	return seller.id
}
func (seller *sellerStruct) insert_selll_id() error {
	_, err := app.db.Exec("insert into seller (seller_id,app) values(?,?)", seller.id, 0)
	return err
}

func (seller *sellerStruct) update_status(id int64, s int) error {
	_, err := app.db.Exec("UPDATE product SET status = ? ,app = ? WHERE id = ?", s, app.Basic.App_id, id)
	if err != nil {
		log.Infof("更新product表状态失败 ID:%d app:%d 状态:%d", id, app.Basic.App_id, s)
		return err
	}
	log.Infof("更新product表状态成功 ID:%d 状态:%d app:%d ", id, s, app.Basic.App_id)
	return nil
}
