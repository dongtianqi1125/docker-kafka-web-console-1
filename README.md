# Kafka Web Console
This is a docker image that installs Kafka Web Console to an ubuntu docker container.  For more information on Kafka Web Console go here:

[Kafka Web Console](https://github.com/claudemamo/kafka-web-console)

# Docker Hub Docker Image

This image is already built and available on my Docker Hub repository here:

[leafknode/kafka-web-console](https://registry.hub.docker.com/u/leafknode/kafka-web-console/)

To run my existing image, just execute the following:

```
sudo docker run -d -p 9090:9090 --name kafka-web-console leafknode/kafka-web-console
```

# Building Yourself
If you don't trust my shit and you just want to build it yourself then feel free to clone my repository and execute the following:

```
sudo docker build -t kafka-web-console .
```

## Running Your Own Build

```
sudo docker run -d -p 9090:9090 kafka-web-console
```

# Verifying
After executing the run command, verify that the docker container is running by executing the following:

```
sudo docker ps | grep kafka-web-console
```

If you don't see it running then you done did fucked up something (or I did).

If it is running, then you should be able to hit it by going to the following URL:

http://localhost:9090
