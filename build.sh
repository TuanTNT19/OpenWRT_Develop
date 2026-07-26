#!/bin/bash

set -e

BOARD=$1
ACTION=$2

CONFIG_DIR="config/boards"
CONFIG_FILE="${CONFIG_DIR}/${BOARD}.config"

usage() {
    echo "Usage:"
    echo "  ./build.sh <board> makeconfig"
    echo "  ./build.sh <board> sbuild"
    echo "  ./build.sh <board> fullbuild"
    exit 1
}

# Kiểm tra tham số
[ $# -ne 2 ] && usage

# Kiểm tra file config tồn tại
if [ ! -f "$CONFIG_FILE" ]; then
    echo "ERROR: Config file not found:"
    echo "  $CONFIG_FILE"
    exit 1
fi

makeconfig() {
    echo "==> Applying config for ${BOARD}"
    rm -f .config
    cp -a "$CONFIG_FILE" .config
    make defconfig
}

case "$ACTION" in
    makeconfig)
        makeconfig
        ;;

    sbuild)
        echo "==> Building OpenWrt"
        make -j"$(nproc)"
        ;;

    fullbuild)
        echo "==> Cleaning"
        make clean

        makeconfig

        echo "==> Building OpenWrt"
        make -j"$(nproc)"
        ;;

    *)
        usage
        ;;
esac
