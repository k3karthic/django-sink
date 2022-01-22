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
echo $SSH_KEY | base64 -d > $HOME/.ssh/id_rsa && 
chmod 400 $HOME/.ssh/id_rsa &&
[[ $(grep -c codeberg .git/config) -eq "0" ]] &&
git remote add codeberg git@codeberg.org:k3karthic/django-sink.git

git remote set-url origin git@github.com:k3karthic/django-sink.git
git remote set-url --add --push origin git@github.com:k3karthic/django-sink.git &&
git remote set-url --add --push origin git@codeberg.org:k3karthic/django-sink.git &&
git config user.signingkey 9D183F822098553E
git config user.email k3.karthic@protonmail.ch
git config user.name "Karthic Kumaran"
git config commit.gpgsign true
