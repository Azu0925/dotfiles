#!/bin/bash -e

IGNORE_PATTERN="^\.(git|travis|gitignore)"

echo '~~~~~ install dotfiles ~~~~~'
echo 'シンボリックリンク作成'

BASEDIR=$(dirname $0)
cd $BASEDIR

for dotfile in .??*; do
    if [ $dotfile = '.git' ]; then
        continue
    elif [ $dotfile = '.gitignore' ]; then
        continue
    else
        ln -snfv "$(pwd)/$dotfile" "$HOME/$dotfile"
    fi
done


# cp -r ./nvim ~/.config/
# curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
# chmod u+x nvim.appimage
# ./nvim.appimage
# rm -rf ./nvim.appimage
echo '[success]Neovim'
