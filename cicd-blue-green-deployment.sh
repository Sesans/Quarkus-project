#!/bin/bash -xe
APP=$1
GREEN_CONTAINER_DEPLOY_TAG=$2

if [ $# -lt 2 ]; then
  exit
fi

BLUE_CONTAINERS=$(docker ps -qf "name=${APP}")
BLUE_CONTAINERS_SCALE=$(echo "$BLUE_CONTAINERS" | wc -w | xargs)

GREEN_CONTAINERS_SCALE=$((BLUE_CONTAINERS_SCALE * 2))
if [[ $BLUE_CONTAINERS_SCALE == 0 ]]; then
    GREEN_CONTAINERS_SCALE=1
fi

TAG=$GREEN_CONTAINER_DEPLOY_TAG docker compose up -d "$APP" --scale "$APP=$GREEN_CONTAINERS_SCALE" --no-recreate --no-build

MAX_RETRIES=300
RETRIES=0

until [ "$(docker ps -q -f "name=${APP}" -f "health=healthy" | wc -l | xargs)" == "$GREEN_CONTAINERS_SCALE" ]; do
    sleep 0.1
    RETRIES=$((RETRIES+1))

    if [ "$RETRIES" -ge "$MAX_RETRIES" ]; then
        echo "❌ Timeout: containers de ${APP} não ficaram healthy."
        exit 1
    fi
done

if [[ $BLUE_CONTAINERS_SCALE -gt 0 ]]; then
    docker kill --signal=SIGTERM "$BLUE_CONTAINERS"
fi