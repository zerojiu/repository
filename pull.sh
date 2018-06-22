#!/bin/bash
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_rsa
git pull
