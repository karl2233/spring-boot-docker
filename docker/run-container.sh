#!/bin/bash
cat ${SUDO_PASSWORD_FILE} | sudo -S docker run --name ${DOCKER_IMAGE_NAME} --detach=true --publish=8888:8080 ${DOCKER_USER_NAME}/${DOCKER_IMAGE_NAME}