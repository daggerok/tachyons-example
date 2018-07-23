#!/bin/bash

# add base tag:
# <head> -> <head><base href="/tachyons-example/"/>

if ! [ -z "$1" ]; then
  if [ -f "$1" ]; then
    sed -i -e "s/\(<head>\)/<head><base href=\"\/tachyons-example\/\"\/>/g" $1
    rm -rf "$1-e"
  fi
fi
