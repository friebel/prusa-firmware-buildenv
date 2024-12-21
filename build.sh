#!/bin/bash
set -eu

SCRIPTDIR=$( cd "$(dirname "$0")"; pwd )
docker run -it --rm --volume "$SCRIPTDIR":/build --workdir /build --name "prusa-fw-builder-$( date +"%Y-%m-%d_%H%M%S" )" prusa-fw-builder sh build-script.sh

latest_file=$( find PF-build-hex -mindepth 2 -name '*.hex' -print0 | xargs -0 ls -t | head -n1 )
ls -lt "${latest_file}"
open --reveal "${latest_file}"
