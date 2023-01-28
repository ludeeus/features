#!/usr/bin/env bash
set -e

source ./common.sh

VERSION=${VERSION:-"stable"}

install_package_if_needed python3-pip

if [ "${VERSION}" == "stable" ] || [ -z "${VERSION}" ]; then
    python3 -m pip install homeassistant
elif [ "${VERSION}" == "beta" ]; then
    python3 -m pip install --pre homeassistant
else
    python3 -m pip install "homeassistant==${VERSION}"
fi