export image_name=nginx-s2i
# export base_image=centos/python-36-centos7
export base_image=registry.access.redhat.com/rhscl/httpd-24-rhel7
s2i build . $base_image $image_name-image
docker run --rm -ti --name $image_name-container -p 8080:8080 $image_name-image
docker rmi $image_name-image
# docker rmi $base_image
docker image prune --force