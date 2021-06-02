#!/usr/bin/env bash

set -e

curl -s https://core.telegram.org/getProxySecret -o proxy-secret

curl -s https://core.telegram.org/getProxyConfig -o proxy-multi.conf

# shellcheck disable=SC2046
mtproto-proxy              \
    -p "${MT_LOCAL_PORT}"  \
    -H "${MT_CLIENT_PORT}" \
    -S $(cat proxy-secret)  proxy-multi.conf  \
    -M 1 "${MT_SECRET}"
