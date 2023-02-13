#!/bin/bash

git diff-tree --no-commit-id --name-only -r HEAD

git diff-tree --no-commit-id --name-only -r HEAD | xargs dirname | sort | uniq


pwd
