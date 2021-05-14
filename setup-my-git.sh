#!/bin/sh -e
  
git --version

echo -n "Insert your name: "
read NAME

echo -n "Insert your e-mail address: "
read EMAIL

echo -n "\n\n\nPlease, confirm your identity:\n${NAME} <${EMAIL}>\n\n\n"

echo "Press any key to continue"
read KEY

set -ex
git config --global user.name "${NAME}"
git config --global user.email "${EMAIL}"
git config --global credential.helper store

set -e
echo "done"