#!/bin/bash

[ -z "$HTTP_PORT" ] && echo "Need to set environment variable 'HOST_PORT'" && exit 1;

export PATH=/home/kafka-web-console/kafka-web-console-2.0.0/bin:$PATH

echo "Running kafka-web-console on port $HTTP_PORT"

kafka-web-console -DapplyEvolutions.default=true -Dhttp.port=$HTTP_PORT
