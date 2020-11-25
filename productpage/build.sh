

image="linuxhub/bookinfo-productpage:1.16.2-rc2"

docker build -t $image .
docker push $image
#docker run -p 9080:9080 linuxhub/bookinfo-productpage:1.16.2-rc2
