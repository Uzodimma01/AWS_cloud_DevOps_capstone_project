echo "Copying deployment.yml file to temporary directory"

# Copy deployment file to a temporary locationin order to replace variables out of place using sed command
cp ./build_files/deployment.yml /tmp/jenkins_build_files/
