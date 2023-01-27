#!/usr/bin/env bash
set -e

VERSION=${VERSION:-"stable"}

if [ "${VERSION}" == "stable" ] || [ -z "${VERSION}" ]; then
    python3 -m pip install homeassistant
elif [ "${VERSION}" == "beta" ]; then
    python3 -m pip install --pre homeassistant
else
    python3 -m pip install "homeassistant==${VERSION}"
fi