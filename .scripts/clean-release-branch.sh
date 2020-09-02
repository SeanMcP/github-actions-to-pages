#!/bin/env bash

branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')

git checkout gh-pages

git pull

# TODO: find a way to configure the ignored files
ls | grep -v 'CNAME' | xargs rm -rf

git commit -m "task: clean release branch"

git push

git checkout $branch

