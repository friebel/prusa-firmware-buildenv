#!/bin/echo docker build . -f
# -*- coding: utf-8 -*-

FROM ubuntu:22.04
RUN apt update
RUN apt upgrade -y
RUN apt install -y bzip2 gawk gcc git make python3 wget xz-utils zip
RUN ln -sf /usr/bin/python3 /usr/bin/python
