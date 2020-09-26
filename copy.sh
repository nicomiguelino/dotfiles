#!/bin/bash

config_files=(
    $HOME/.tmux.conf
    $HOME/.vimrc
    $HOME/.config/nvim/init.vim
    $HOME/.commonrc.d
)

cp -r ${config_files[@]} .
