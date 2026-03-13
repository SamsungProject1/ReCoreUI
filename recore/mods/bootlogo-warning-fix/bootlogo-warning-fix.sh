#!/bin/bash

# repo root (ReCoreUI)
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../../" && pwd)"

BLOBS_DIR="$ROOT_DIR/blobs/param"
OUT_DIR="$ROOT_DIR/out"

echo "ROOT_DIR  = $ROOT_DIR"
echo "BLOBS_DIR = $BLOBS_DIR"
echo "OUT_DIR   = $OUT_DIR"

mkdir -p "$OUT_DIR"

# choose correct param file
if [ "$DEVICE_SINGLE_SYSTEM_IMAGE" = "essi" ]; then
    FILE="up_param_1080p.bin"

elif [ "$DEVICE_SINGLE_SYSTEM_IMAGE" = "essi64" ]; then
    FILE="up_param_1440p.bin"

else
    echo "Unknown DEVICE_SINGLE_SYSTEM_IMAGE: $DEVICE_SINGLE_SYSTEM_IMAGE"
    exit 1
fi

SRC="$BLOBS_DIR/$FILE"

if [ -f "$SRC" ]; then
    echo "Copying $FILE → $OUT_DIR"
    cp -f "$SRC" "$OUT_DIR/"
else
    echo "Error: $SRC not found!"
    exit 1
fi

echo "Bootlogo param copied successfully."