#!bin/bash

echo '~~~~~ install dotfiles ~~~~~'

cp ./.bashrc ~/.bashrc

cp -r ./nvim ~/.config/
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
rm -rf ./nvim.appimage
echo '[success]Neovim'
