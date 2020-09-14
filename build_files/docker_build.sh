# Build docker image with the specified name in docker_image_name.txt file
echo 'building docker image...'
docker build --tag=$(<./variables/docker_image_name.txt) .
