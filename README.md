```
POST
/register-url
```
```
パラメーター
{
    "url": {
        "original_url": "https://yahoo.co.jp"
    }
}
```
```
レスポンス
{
    "status": 200,
    "short_url": "hd10h"
}
```
---

```
GET
/urls
```

```
レスポンス
{
    "status": 200,
    "urls": [
        [
            "https://timecrowd.net/",
            "whmqk"
        ],
        [
            "/https:google.com",
            "yfixf"
        ],
        [
            "https://www.google.com/",
            "qdbsb"
        ],
        [
            "https://yahoo.co.jp/",
            "hd10h"
        ]
    ]
}
```
で登録されている元のURL全取得
---

```
GET
 /<short_url>
```


```
レスポンス
{
    "status": 200,
    "original_url": "https://timecrowd.net/"
}

```
元のURLを返却


# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
