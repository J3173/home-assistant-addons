# https://developers.home-assistant.io/docs/add-ons/configuration#add-on-dockerfile
FROM nakla/sbfspot

# Execute during the build of the image
#ARG TEMPIO_VERSION BUILD_ARCH
#RUN \
#    curl -sSLf -o /usr/bin/tempio \
#    "https://github.com/home-assistant/tempio/releases/download/${TEMPIO_VERSION}/tempio_${BUILD_ARCH}"

# Copy root filesystem
COPY --chown=5000:5000 rootfs /

ENV TZ=Europe/Berlin
ENV ENABLE_SBFSPOT=1
ENV SBFSPOT_INTERVAL=60
ENV ENABLE_SBFSPOT_UPLOAD=0
ENV MQTT_ENABLE=1
ENV QUIET=0
ENV SBFSPOT_ARGS="-d0 -v0"
ENV INIT_DB=0

VOLUME /etc/sbfspot /var/sbfspot
