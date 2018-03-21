#!/usr/bin/env bash

REPO=$(basename ${1})
echo Cloning repo ${REPO}
git clone ${1}

echo Moving git dir for ${REPO}
mv ${REPO}/.git .git
rm -rf ${REPO}
