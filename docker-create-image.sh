#!/bin/bash
# shellcheck source=docker-detect.sh
source "$(dirname "$0")/docker-detect.sh"
"${DOCKER}" build --platform linux/arm64 -t localhost/prusa-fw-builder .
