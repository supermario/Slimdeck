#!/bin/sh
# Starts thin client and recursively wgets whole site into static folder

thin -d start
sleep 2
wget \
  --recursive \
  --page-requisites \
  --html-extension \
  --convert-links \
  --no-parent \
  --no-host-directories \
  -P static \
    http://localhost:3000
thin stop
exit 100
