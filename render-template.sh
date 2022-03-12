#!/bin/bash

# Prosody host/port
export SNIKKET_TWEAK_INTERNAL_HTTP_HOST=${SNIKKET_TWEAK_INTERNAL_HTTP_HOST-localhost}
export SNIKKET_TWEAK_INTERNAL_HTTP_PORT=${SNIKKET_TWEAK_INTERNAL_HTTP_PORT-5280}

# Portal host/port
export SNIKKET_TWEAK_PORTAL_INTERNAL_HTTP_HOST=${SNIKKET_TWEAK_PORTAL_INTERNAL_HTTP_HOST-localhost}
export SNIKKET_TWEAK_PORTAL_INTERNAL_HTTP_PORT=${SNIKKET_TWEAK_PORTAL_INTERNAL_HTTP_PORT-5765}

# External ports
export SNIKKET_TWEAK_HTTP_PORT=${SNIKKET_TWEAK_HTTP_PORT-80}
export SNIKKET_TWEAK_HTTPS_PORT=${SNIKKET_TWEAK_HTTPS_PORT-443}

export SNIKKET_TWEAK_CERT_DOMAIN=${SNIKKET_TWEAK_XMPP_DOMAIN:-SNIKKET_DOMAIN}

exec envsubst '$SNIKKET_DOMAIN $SNIKKET_TWEAK_HTTP_PORT $SNIKKET_TWEAK_HTTPS_PORT $SNIKKET_TWEAK_INTERNAL_HTTP_PORT $SNIKKET_TWEAK_PORTAL_INTERNAL_HTTP_PORT $SNIKKET_TWEAK_INTERNAL_HTTP_HOST $SNIKKET_TWEAK_PORTAL_INTERNAL_HTTP_HOST $SNIKKET_TWEAK_CERT_DOMAIN' \
  < "$1" \
  > "$2";
