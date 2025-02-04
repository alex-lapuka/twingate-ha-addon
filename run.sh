#!/bin/sh

echo "Starting Twingate Connector..."

# Fetch config values from Home Assistant
NETWORK=${TWINGATE_NETWORK}
ACCESS_TOKEN=${TWINGATE_ACCESS_TOKEN}
REFRESH_TOKEN=${TWINGATE_REFRESH_TOKEN}

# Run the Twingate Connector
docker run -d --sysctl net.ipv4.ping_group_range="0 2147483647" --env TWINGATE_URL="https://$NETWORK" --env TWINGATE_ACCESS_TOKEN="$ACCESS_TOKEN" --env TWINGATE_REFRESH_TOKEN="$REFRESH_TOKEN"  --env TWINGATE_LABEL_HOSTNAME="`hostname`" --env TWINGATE_LABEL_DEPLOYED_BY="docker" --name "twingate-sceptical-moose" --restart=unless-stopped --pull=always twingate/connector:1

echo "Twingate Connector Started"