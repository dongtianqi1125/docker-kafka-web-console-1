#!/bin/bash

[ -z "$HTTP_PORT" ] && echo "Need to set environment variable 'HOST_PORT'" && exit 1;

export PATH=/home/kafka-web-console/kafka-web-console-$KAFKA_WEB_CONSOLE_VERSION/bin:$PATH

echo "Running kafka-web-console version $KAFKA_WEB_CONSOLE_VERSION on port $HTTP_PORT"

kafka-web-console -DapplyEvolutions.default=true -Dhttp.port=$HTTP_PORT
