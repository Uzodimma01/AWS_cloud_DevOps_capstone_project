# Wait for kubbernetes load balancer service to be up
sleep 30s

# Get the deployed service 
kubectl get service/$(<./variables/docker_image_name.txt)
