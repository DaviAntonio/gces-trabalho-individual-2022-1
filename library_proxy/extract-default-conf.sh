#!/bin/bash

readonly NGINX_VERSION='1.23.1'
readonly TMP_CONTAINER_NAME='tmp-nginx'
readonly HOST_CONF_FILE="./standard-nginx.conf"
readonly HOST_DEFAULT_CONF_DIR="./standard-default"

docker run --name "${TMP_CONTAINER_NAME}" --detach=true "nginx:${NGINX_VERSION}"
docker cp "${TMP_CONTAINER_NAME}:/etc/nginx/nginx.conf" "${HOST_CONF_FILE}"
docker cp "${TMP_CONTAINER_NAME}:/etc/nginx/conf.d/" "${HOST_DEFAULT_CONF_DIR}"
docker rm --force "${TMP_CONTAINER_NAME}"
