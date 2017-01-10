FROM alpine:3.5

RUN apk add --no-cache mosquitto=1.4.10-r2

RUN mkdir -p /mosquitto/config && \
	cp /etc/mosquitto/mosquitto.conf /mosquitto/config/

EXPOSE 1883

ENTRYPOINT ["/usr/sbin/mosquitto"]
CMD ["-c", "/mosquitto/config/mosquitto.conf"]
