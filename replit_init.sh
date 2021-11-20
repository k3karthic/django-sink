#!/usr/bin/env bash

CWD=$(pwd)

rm -rf $HOME/.gnupg &&
cd $HOME &&
echo $GNUGPG | base64 -d | tar --no-same-owner -xzvf - &&
cd $CWD &&
rm -rf $HOME/.ssh &&
mkdir $HOME/.ssh &&
echo $SSH_CONFIG | base64 -d > $HOME/.ssh/config && 
chmod 600 $HOME/.ssh/config &&
echo $CODEBERG_SSH_KEY | base64 -d > $HOME/.ssh/codeberg && 
chmod 400 $HOME/.ssh/codeberg &&
echo $GITHUB_SSH_KEY | base64 -d > $HOME/.ssh/github && 
chmod 400 $HOME/.ssh/github &&
[[ $(grep -c codeberg .git/config) -eq "0" ]] &&
git remote add codeberg git@codeberg.org:k3karthic/django-sink.git

git config user.signingkey 9D183F822098553E
git config user.email k3.karthic@protonmail.ch
git config user.name "Karthic Kumaran"
git config commit.gpgsign true