# NovelWeb

## 接口

#### 获取验证码
`GET /captcha`  


```json
{"captcha_id": "xxx"}
```

#### 注册
`POST /signup`  

key|type|name|eg
--|--|--|--
captcha_id|string|验证码ID|0lESyHQv2P8xfc8FHj7d
captcha_digit|string|验证码|123456
un|string|用户名|sdfid
pwd|string|密码|123456
email|string|邮箱|xxx@xxx.xx
invite|string|邀请码|xxx


status_code|message
--|--
521|wrong captcha digit
522|cant use username as email
523|username has been used
524|illegal email
525|invalid invite code
526|username and pwd length must between 6 and 12
527|other error

#### 登录
`POST /login`
key|type|name|eg
--|--|--|--
un|string|用户名|xxx
pwd|string|密码|xxx

status_code|message
--|--
520|wrong password
521|other error
522|username not exist

#### 获取书架
`GET /shelf`

status_code|message
--|--
521|get shelf failed
403|please login

status_code|message
--|--
520|get shelf failed
521|convert model failed
403|please login

#### 书架添加书籍
`GET /shelf/add`

key|type|name|eg
--|--|--|--
id|int|书籍ID|xxx

status_code|message
--|--
520|wrong id
521|get book info failed
522|add book failed
403|please login

#### 书架删除书籍
`GET /shelf/del`

key|type|name|eg
--|--|--|--
id|int|书籍ID|xxx

status_code|message
--|--
520|delete book failed
401|please login

#### 移至书架第一位
`GET /shelf/up`

key|type|name|eg
--|--|--|--
id|int|书籍ID|xxx

status_code|message
--|--
520|no book id
521|update shelf sequence failed
403|please login

#### 搜索
`GET /search`

key|type|name|eg
--|--|--|--
name|string|关键词|xxx

status_code|message
--|--
520|search failed
521|empty param name

#### 章节列表
`GET /chapter`

key|type|name|eg
--|--|--|--
id|int|书籍ID|xxx
reverse|bool|是否倒序|false

status_code|message
--|--
520|no param id
521|get chapter failed

#### 章节内容
`GET /read`

key|type|name|eg
--|--|--|--
id|int|书籍ID|xxx
cid|int|章节ID|xxx

status_code|message
--|--
520|no param bid
521|no param cid
525 530|get chapter failed
528|get chapter info failed
529|convert cid failed


#### 封面图片
`GET /img/{id}`

key|type|name|eg
--|--|--|--
id|int|书籍ID|xxx

status_code|message
--|--
520|no param id
521|get book info failed
522|get cover failed
523|save cover failed
403|please login

#### 下载整本txt
`GET /download/{id}/{name}`

key|type|name|eg
--|--|--|--
id|int|书籍ID|xxx
name|string|书籍名称|（需要urlencode）大奉打更人

status_code|message
--|--
403|please login
520|get book name failed
521|get book info failed
522|download failed

#### 获取用户设置
`GET /setting`

status_code|message
--|--
403|please login
520|get setting failed

#### 保存设置
`POST /setting`

`REQUEST BODY`: `json`
```json
{"font_size": 13}
```

status_code|message
--|--
403|please login
520|parse setting failed
521|save setting failed

