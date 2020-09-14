# Check the status of the rolling update deployed
kubectl rollout status deployments/$(<./variables/docker_image_name.txt)
