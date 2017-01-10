# Docker Image for Mosquitto

Dockerfile required to build a Docker image for the
[Mosquitto](https://mosquitto.org/) MQTT broker.

## Running

```
docker run -it -p 1883:1883 --rm spdigital/mosquitto
```

Alternatively, if you want to run the container in the background:

```
docker run --detach -p 1883:1883 spdigital/mosquitto
```

## Configuring Mosquitto

You can use your own [`mosquitto.conf`](https://mosquitto.org/man/mosquitto-conf-5.html)
config file via a Docker volume:

```
mkdir config
touch config/mosquitto.conf
# Actually write your config to the file.
docker run --volume $PWD/config:/mosquitto/config -it -p 1883:1883 --rm spdigital/mosquitto
```

The Docker container is configured to use the config file in
`/mosquitto/config/mosquitto.conf`.
