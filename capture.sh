#!/bin/bash

CAMERA=/dev/video0
IMAGE_DIR=/home/pi/Pictures/FarmBot/

main() {
    DATE=$(date +"%Y-%m-%d_%H%M%S")
    IMAGE_PATH=$IMAGE_DIR$DATE.jpg

    fswebcam -d $CAMERA -r 1280x960 --no-banner $IMAGE_PATH
}

main
