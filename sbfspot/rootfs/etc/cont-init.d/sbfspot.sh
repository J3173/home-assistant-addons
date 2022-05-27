#!/usr/bin/with-contenv bashio
# shellcheck shell=bash
# ==============================================================================
# Configures sbfspot
# ==============================================================================

MQTT_HOST=$(bashio::services mqtt "host")
MQTT_USER=$(bashio::services mqtt "username")
MQTT_PASSWORD=$(bashio::services mqtt "password")
export MQTT_HOST MQTT_USER MQTT_PASSWORD

# Generate sbfspot configuration.
tempio \
    -conf /data/options.json \
    -template /etc/sbfspot/SBFspot.cfg.gtpl \
    -out /etc/sbfspot/SBFspot.cfg
