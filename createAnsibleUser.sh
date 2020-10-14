#!/bin/bash
useradd ansible --groups wheel
echo "ansible ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers
