#!/bin/bash

date=`date +%Y%m%d`

# for vim
mv $HOME/.vimrc $HOME/.vimrc$date

cp ./.vimrc $HOME/
cp -rf .vim $HOME/

# for tmux
mv $HOME/.tmux.conf $HOME/.tmux.conf$date

cp .tmux.conf $HOME/

# init vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
