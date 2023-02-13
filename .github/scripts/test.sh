#!/bin/bash

x=$(git diff-tree --no-commit-id --name-only -r HEAD)
echo "$x"

y=$(git diff-tree --no-commit-id --name-only -r HEAD | xargs dirname | sort | uniq)
echo "$y"


pwd
