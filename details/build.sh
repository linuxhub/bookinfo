image="linuxhub/bookinfo-details:1.16.2-rc1"

docker build -t $image .
docker push $image
#9080
#docker run -p 9080:9080 linuxhub/bookinfo-details:1.16.2-rc1

