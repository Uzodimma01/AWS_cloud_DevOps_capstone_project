# lint dockerfile
hadolint ./build_files/Dockerfile

# lint HTML file
tidy -q -e ./build_files/index.html
