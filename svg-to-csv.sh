#!/bin/sh

if [ $# -ne 1 ]; then
  echo "usage: $0 <svg-file>"
  exit 1
fi

cat "$1" | grep rect | awk '{print $9 "," $8}' | sed -e 's/data-date="\([^"]*\)".*,data-count="\([^"]*\)"/\1,\2/'
