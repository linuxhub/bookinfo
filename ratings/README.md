
## bookinfo-ratings

```bash

docker run -p 9080:9080 linuxhub/bookinfo-ratings:1.16.2-rc1

```

```bash
# curl http://127.0.0.1:9080/health
{"status":"Ratings is healthy"}

# curl http://127.0.0.1:9080/ratings/1
{"id":1,"ratings":{"Reviewer1":5,"Reviewer2":4}}
```