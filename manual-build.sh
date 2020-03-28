echo "Building bypassing hooks"
DOCKERFILE_PATH=$PWD/Dockerfile IMAGE_NAME=coq:8.11-dev ./hooks/build
