# Tag docker image and upload to DockerHub
dockerpath=$(<./variables/dockerhub_image_path.txt)/$(<./variables/docker_image_name.txt)
local_tag=$(<./variables/docker_image_name.txt):$(<./variables/docker_image_tag.txt)
docker tag $local_tag $dockerpath

# Push image to DockerHub
echo 'Pushing image to DockerHub...'
docker push $dockerpath
