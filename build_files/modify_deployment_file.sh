# Create variables for deployment file
docker_image_name=$(<../variables/docker_image_name.txt)
replica_set=$(<../variables/node_replica_set.txt)
max_surge=$(<../variables/max_surge.txt)
max_unavailable=$(<../variables/max_unavailable.txt)
docker_image_path=$(<./variables/dockerhub_image_path.txt)/$(<./variables/docker_image_name.txt)

# Update variable values in the deployment.yml file
sed -i "s+docker_image_name+$docker_image_name+g" /tmp/jenkins_build_files/deployment.yml
sed -i "s+replica_set+$replica_set+g" /tmp/jenkins_build_files/deployment.yml
sed -i "s+max_surge+$max_surge+g" /tmp/jenkins_build_files/deployment.yml
sed -i "s+max_unavailable+$max_unavailable+g" /tmp/jenkins_build_files/deployment.yml
sed -i "s+docker_image_path+$docker_image_path+g" /tmp/jenkins_build_files/deployment.yml
