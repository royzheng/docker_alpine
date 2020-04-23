IMAGE_NAME="royzheng/alpine"
TAG="3.11"
CONTAINER_NAME="royzheng_alpine"

build:
		sudo docker build -t ${IMAGE_NAME}:${TAG} .
	
console:
		sudo docker run --rm -it ${IMAGE_NAME}:${TAG} zsh