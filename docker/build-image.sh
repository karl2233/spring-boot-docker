#!/bin/bash
cat ${SUDO_PASSWORD_FILE} | sudo -S docker build --force-rm=true --tag=${DOCKER_USER_NAME}/${DOCKER_IMAGE_NAME} .