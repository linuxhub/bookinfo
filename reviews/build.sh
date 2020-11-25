
gradle clean build

image_v1="linuxhub/bookinfo-reviews-v1:1.16.2-rc1"
image_v2="linuxhub/bookinfo-reviews-v2:1.16.2-rc1"
image_v3="linuxhub/bookinfo-reviews-v3:1.16.2-rc1"

cd ./reviews-wlpcfg
docker build -t $image_v1 --build-arg service_version=v1 .
docker build -t $image_v2 --build-arg service_version=v2 --build-arg enable_ratings=true .
docker build -t $image_v3 --build-arg service_version=v3 --build-arg enable_ratings=true --build-arg star_color=red .


# docker run -p 9080:9080 linuxhub/bookinfo-reviews-v1:1.16.2-rc1
# http://127.0.0.1:9080/reviews/0


docker push $image_v1
docker push $image_v2
docker push $image_v3