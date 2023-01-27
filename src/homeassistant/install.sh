#!/usr/bin/env bash
set -e

VERSION=${VERSION:-"stable"}

if ! command -v python3 &> /dev/null
then
    echo "python3 could not be found"
    exit
fi

if ! command -v $(python3 -m pip) &> /dev/null
then
    echo "pip could not be found"
    exit
fi

if [ "${VERSION}" == "stable" ] || [ -z "${VERSION}" ]; then
    python3 -m pip install homeassistant
elif [ "${VERSION}" == "beta" ]; then
    python3 -m pip install --pre homeassistant
else
    python3 -m pip install "homeassistant==${VERSION}"
fi