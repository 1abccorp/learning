#!/bin/bash

x=$(git diff-tree --no-commit-id --name-only -r HEAD)
echo "$x"

#git diff-tree --no-commit-id --name-only -r HEAD | xargs dirname | sort | uniq


pwd
