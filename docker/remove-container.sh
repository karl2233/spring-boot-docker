#!/bin/bash
cat ${SUDO_PASSWORD_FILE} | sudo -S docker rm --force=true ${DOCKER_IMAGE_NAME}