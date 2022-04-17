# https://developers.home-assistant.io/docs/add-ons/configuration#add-on-dockerfile

#
# Build stage
#
ARG BUILD_FROM
FROM $BUILD_FROM as build

RUN apk add --no-cache build-base bluez-dev boost-dev

ARG sbfspot_version
RUN wget -c https://github.com/SBFspot/SBFspot/archive/V$sbfspot_version.tar.gz

RUN mkdir SBFspot
RUN tar -xvf V$sbfspot_version.tar.gz -C SBFspot --strip-components 1

WORKDIR SBFspot/SBFspot

RUN make nosql
RUN make install_nosql

#
# Final stage
#
FROM $BUILD_FROM
RUN apk add --no-cache bluez-libs libstdc++ mosquitto-clients
COPY --from=build /usr/local/bin/sbfspot.3 /usr/local/bin/sbfspot.3
COPY rootfs /
