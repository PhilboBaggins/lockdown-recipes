#!/bin/sh
# Generate a page for a drink recipe created based on a generated name

if [ $# -gt 0 ]; then
    NAME="$@"
    SAFE_NAME=$(echo $NAME | sed 's/ /-/g' | tr "[:upper:]" "[:lower:]")
else
    echo "Usage: $(basename -- "$0") drink name"
fi

cd "$(dirname -- "$0")"
cd ../recipes/

cat <<EOF > ${SAFE_NAME}.md
---
layout: recipe
title: $NAME
categories: [All recipes, Drinks, Inspired by name]
---
The name of this drink was generated with [this service](https://thingnames.com/drink-names). The drink was inspired by the name ... it probably won't be very good.

TODO: Add recipe here
EOF
