#!/bin/bash

set -u

DOT_DIR=$(cd $(dirname $0); pwd)


echo "Link dotfiles"

echo "Enter DOT_DIR"

cd ${DOT_DIR}
for f in .??*
do
    [ "$f" = ".git" ] && continue

    ln -snfv ${DOT_DIR}/${f} ${HOME}/${f}
done

echo "linked dotfiles completely"
