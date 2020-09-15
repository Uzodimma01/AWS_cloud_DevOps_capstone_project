# Remove all dangling Docker files
echo "Cleaning up dangling files"
docker system prune -f

# Remove created temporary files
echo "Cleaning up temporary files"
rm -r /tmp/jenkins_build_files/
