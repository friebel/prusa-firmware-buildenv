#!/bin/sh
set -eu

BOARD_HEADER="Bondtech-MK3S-16-EINSy10a-M.h"

cd Prusa-Firmware

if git grep -q EN_ONLY PF-build.sh; then
    build_lang="EN_ONLY"
elif git grep -q EN_FARM PF-build.sh; then
    build_lang="EN_FARM"
else
    echo "$0: Error detecting which option to use to build english-only firmware"
    exit 7
fi

bash PF-build.sh -b Auto -l "${build_lang}" -v "${BOARD_HEADER}" -n 1 -o 0 -d RC

# vim: et sw=4 ts=4 sts=4
