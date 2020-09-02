#!/bin/env bash

branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')

git checkout --orphan gh-pages

git commit --allow-empty -m "init"

git push -u origin gh-pages

git checkout $branch

