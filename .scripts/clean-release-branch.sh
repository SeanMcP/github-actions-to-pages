#!/bin/env bash

branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')

if [ "$branch" != "gh-pages" ]
  then
    git checkout gh-pages
fi

git pull

# TODO: find a way to configure the ignored files
ls | grep -v 'CNAME' | xargs rm -rf

git add .

git commit -m "task: clean release branch"

git push

if [ "$branch" != "gh-pages" ]
  then
    git checkout $branch
fi
