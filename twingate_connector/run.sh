#!/usr/bin/with-contenv bashio

echo "Starting Twingate Connector..."

# Fetch config values from Home Assistant
NETWORK=$(bashio::config 'Network Slug')
ACCESS_TOKEN=$(bashio::config 'Access Token')
REFRESH_TOKEN=$(bashio::config 'Refresh Token')

echo "Network: ${NETWORK}"
echo "Access token: ${ACCESS_TOKEN}"
echo "Refresh token: ${REFRESH_TOKEN}"

# Run the Twingate Connector
# curl "https://binaries.twingate.com/connector/setup.sh" | sudo TWINGATE_ACCESS_TOKEN="${ACCESS_TOKEN}" TWINGATE_REFRESH_TOKEN="${REFRESH_TOKEN}" TWINGATE_URL="https://${NETWORK}" TWINGATE_LABEL_DEPLOYED_BY="linux" bash

echo "Twingate Connector Deployed."