#!/bin/bash
cat ${SUDO_PASSWORD_FILE} | sudo -S docker rmi --force=true --no-prune=false ${DOCKER_USER_NAME}/${DOCKER_IMAGE_NAME}