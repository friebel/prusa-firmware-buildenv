FROM ubuntu:22.04

LABEL description="Prusa MK3S firmware build environment"

WORKDIR /build

RUN apt update && apt upgrade -y && \
    apt install -y bzip2 gawk gcc git make python3 wget xz-utils zip && \
    rm -rf /var/lib/apt/lists/* && \
    ln -sf /usr/bin/python3 /usr/bin/python
