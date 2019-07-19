#!/bin/bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

set -x

for file in $DIR/.{aliases,bash_profile,bash_prompt,bashrc,exports,functions,gitconfig}; do
    f=$(basename $file)
    dest="$HOME/$f" 
    echo "ln -sfn $file $dest"
    ln -sfn $file $dest
done;

ln -sfn $DIR/gitignore $HOME/.gitignore
ln -sfn $DIR/.bash_profile $HOME/.profile
