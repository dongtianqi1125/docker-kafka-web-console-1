FROM leafknode/base-ubuntu-oracle-jdk7

MAINTAINER James Humphrey <leafknode@gmail.com>

RUN useradd -m -s /bin/bash kafka-web-console

WORKDIR /home/kafka-web-console

COPY kafka-web-console-2.0.0.zip /home/kafka-web-console/
RUN unzip kafka-web-console-2.0.0.zip
RUN rm kafka-web-console-2.0.0.zip

COPY start.sh /home/kafka-web-console/
RUN chmod 700 start.sh

WORKDIR /home/kafka-web-console/kafka-web-console-2.0.0

ENV HTTP_PORT 9090

ENTRYPOINT ["/home/kafka-web-console/start.sh"]
