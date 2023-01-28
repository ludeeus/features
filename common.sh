#!/usr/bin/env bash

install_package_if_needed() {
    if ! dpkg -s "$@" > /dev/null 2>&1; then
        apt-get update -y
        apt-get -y install --no-install-recommends "$@"
    fi
}

function log_info () { 
    echo -e "${GREEN_COLOR}INFO: $1${NO_COLOR}"
}

function log_warn () { 
    echo -e "${GREEN_YELLOW}WARN: $1${NO_COLOR}"
}

function log_error () { 
    echo -e "${RED_COLOR}ERROR: $1${NO_COLOR}"
    if [ "$2" != "false" ];then 
        exit 1
    fi
}