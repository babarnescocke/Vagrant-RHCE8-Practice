#!/bin/bash
dnf install -q -y python3-pip && \
pip3 install -q "ansible>2.9,<2.10"
