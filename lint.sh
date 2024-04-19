#!/bin/bash
#find -name '*.yaml' | xargs yamllint -d "{extends: relaxed, rules: {line-length: {max: 160}}}" || exit 1
find -name "*.pp" | xargs puppet parser validate --verbose || exit 1
rake syntax
