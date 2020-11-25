## bookinfo-reviews

> env
```bash

# bookinfo-reviews-v1
default@6428d8ba2585:/$  env | grep -i -e service_version -e enable_ratings -e star_color 
ENABLE_RATINGS=false
STAR_COLOR=black
SERVICE_VERSION=v1

# bookinfo-reviews-v2
default@4ee18dcf97c6:/$ env | grep -i -e service_version -e enable_ratings -e star_color 
ENABLE_RATINGS=true
STAR_COLOR=black
SERVICE_VERSION=v2

# bookinfo-reviews-v3
default@10ccd9ea1e0b:/$ env | grep -i -e service_version -e enable_ratings -e star_color 
ENABLE_RATINGS=true
STAR_COLOR=red     # 红色
SERVICE_VERSION=v3

```


> bookinfo-reviews-v1
```bash

# docker run -p 9080:9080 linuxhub/bookinfo-reviews-v1:1.16.2-rc1

# curl http://127.0.0.1:9080/health
{"status": "Reviews is healthy"}

# curl http://127.0.0.1:9080/reviews/1
{"id": "1","reviews": [
    {  "reviewer": "张三",  "text": "微服务架构的基础设施，服务网格将成为2020大热点。好书!"},
    {  "reviewer": "李四",  "text": "作者的写作能力真的很差，很多地方都不通顺，难以理解，书中也有很多错误."}
    ]}

```


> bookinfo-reviews-v2
```bash

# docker run -p 9080:9080 linuxhub/bookinfo-reviews-v2:1.16.2-rc1
# curl http://127.0.0.1:9080/reviews/1
{"id": "1","reviews": [
    {  "reviewer": "张三",  "text": "微服务架构的基础设施，服务网格将成为2020大热点。好书!", "rating": {"error": "目前无法使用评分服务!"}},
    {  "reviewer": "李四",  "text": "作者的写作能力真的很差，很多地方都不通顺，难以理解，书中也有很多错误.", "rating": {"error": "目前无法使用评分服务!"}}
    ]}
```

> bookinfo-reviews-v3
```bash
# docker run -p 9080:9080 linuxhub/bookinfo-reviews-v2:1.16.2-rc1

# curl http://127.0.0.1:9080/reviews/1
{"id": "1","reviews": [
    {  "reviewer": "张三",  "text": "微服务架构的基础设施，服务网格将成为2020大热点。好书!", "rating": {"error": "目前无法使用评分服务!"}},
    {  "reviewer": "李四",  "text": "作者的写作能力真的很差，很多地方都不通顺，难以理解，书中也有很多错误.", "rating": {"error": "目前无法使用评分服务!"}}
    ]}

```