#!/bin/bash
cat ${SUDO_PASSWORD_FILE} | sudo -S docker stop ${DOCKER_IMAGE_NAME}