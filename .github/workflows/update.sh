#!/bin/bash
echo ${_GITHUB_ACCESS_TOKEN_}
git config --global user.name "miidas"
git config --global user.email "67558797+miidas0@users.noreply.github.com"

git clone --recursive https://${GITHUB_ACTOR}:${_GITHUB_ACCESS_TOKEN_}@github.com/${GITHUB_ACTOR}/${GITHUB_ACTOR}.github.io.git
cd ${GITHUB_ACTOR}.github.io
#git remote set-url origin https://${GITHUB_ACTOR}:${_GITHUB_ACCESS_TOKEN_}@github.com/${GITHUB_ACTOR}/${GITHUB_ACTOR}.github.io.git
cd blog
git checkout master
cd ../
git add blog
git commit -m "[CI] Update blog submodule"
git push
