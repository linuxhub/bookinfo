image="linuxhub/bookinfo-ratings:1.16.2-rc1"

docker build -t $image .
docker push $image
# http://127.0.0.1:9080/ratings/1

