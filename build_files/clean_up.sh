# Remove all dangling Docker files
echo 'Cleaning up...'
docker system prune -f

# Remove created temporary files
rm -r /tmp/jenkins_build_files/
