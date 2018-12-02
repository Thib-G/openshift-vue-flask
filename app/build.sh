export image_name=nginx-s2i
# export base_image=centos/python-36-centos7
export base_image=registry.access.redhat.com/rhoar-nodejs-tech-preview/rhoar-nodejs-10-webapp
s2i build . $base_image $image_name-image OUTPUT_DIR=dist
docker run --rm -ti --name $image_name-container -p 8080:8080 $image_name-image
docker rmi $image_name-image
# docker rmi $base_image
docker image prune --force