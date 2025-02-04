#!/bin/sh

echo "Starting Twingate Connector..."

# Fetch config values from Home Assistant
NETWORK=${TWINGATE_NETWORK}
ACCESS_TOKEN=${TWINGATE_ACCESS_TOKEN}
REFRESH_TOKEN=${TWINGATE_REFRESH_TOKEN}

# Run the Twingate Connector
exec /usr/bin/twingate-connector --network $NETWORK --access-token $ACCESS_TOKEN --refresh-token $REFRESH_TOKEN
