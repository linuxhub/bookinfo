## /productpage


## 商品详情服务 ( details )
> /api/v1/products
```json
[
    {
        "id": 0,
        "title": "Istio服务网格技术解析与实践",
        "descriptionHtml": "<a href=\"https://baike.baidu.com/item/Istio%E6%9C%8D%E5%8A%A1%E7%BD%91%E6%A0%BC%E6%8A%80%E6%9C%AF%E8%A7%A3%E6%9E%90%E4%B8%8E%E5%AE%9E%E8%B7%B5\">百度百科</a> Istio是一个开源项目，拥有一个充满活力、开放和多元化的社区，它的目标是赋能开发人员和运维人员，使他们在所有环境中都能敏捷地发布和维护微服务，拥有底层网络的完全可见性，且获得一致的控制和安全能力。在本书中，我们将展示如何利用Istio的功能在云原生世界中运行微服务应用。"
    }
]
```

## 商品详情服务 ( details )
> /api/v1/products/1
```json
{
    "id": 1,
    "author": "王夕宁",
    "year": 2020,
    "type": "平装",
    "pages": 400,
    "publisher": "机械工业出版社",
    "language": "中文",
    "ISBN-10": "9787111644682",
    "ISBN-13": "123-9787111644682"
}
```

## 评论服务 ( reviews )
> /api/v1/products/1/reviews
```json
{
    "id": "1",
    "reviews": [
        {
            "reviewer": "张三",
            "text": "微服务架构的基础设施，服务网格将成为2020大热点。好书!",
            "rating": {
                "stars": 5,
                "color": "black"
            }
        },
        {
            "reviewer": "李四",
            "text": "作者的写作能力真的很差，很多地方都不通顺，难以理解，书中也有很多错误.",
            "rating": {
                "stars": 4,
                "color": "black"
            }
        }
    ]
}
```


## 评分服务 ( ratings )
> /api/v1/products/1/ratings
```json
{
    "id": 1,
    "ratings": {
        "Reviewer1": 5,
        "Reviewer2": 4
    }
}
```