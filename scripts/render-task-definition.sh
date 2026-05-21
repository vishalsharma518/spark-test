#!/bin/bash
set -e
APP_NAME=$1
IMAGE_URI=$2
EXECUTION_ROLE_ARN=$3
cp ecs/task-definition.json /tmp/task-definition-rendered.json
sed -i "s|APP_NAME_PLACEHOLDER|$APP_NAME|g" /tmp/task-definition-rendered.json
sed -i "s|IMAGE_PLACEHOLDER|$IMAGE_URI|g" /tmp/task-definition-rendered.json
sed -i "s|EXECUTION_ROLE_PLACEHOLDER|$EXECUTION_ROLE_ARN|g" /tmp/task-definition-rendered.json
