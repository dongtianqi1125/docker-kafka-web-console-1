FROM leafknode/base-ubuntu-oracle-jdk7

MAINTAINER James Humphrey <leafknode@gmail.com>

RUN useradd -m -s /bin/bash kafka-web-console

WORKDIR /home/kafka-web-console

ENV KAFKA_WEB_CONSOLE_VERSION 2.1.0-SNAPSHOT

COPY kafka-web-console-$KAFKA_WEB_CONSOLE_VERSION.zip /home/kafka-web-console/
RUN unzip kafka-web-console-$KAFKA_WEB_CONSOLE_VERSION.zip
RUN rm kafka-web-console-$KAFKA_WEB_CONSOLE_VERSION.zip

COPY start.sh /home/kafka-web-console/
RUN chmod 700 start.sh

WORKDIR /home/kafka-web-console/$KAFKA_WEB_CONSOLE_VERSION

ENV HTTP_PORT 9090

ENTRYPOINT ["/home/kafka-web-console/start.sh"]
