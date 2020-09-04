#!/bin/bash

config_files=(
    $HOME/.tmux.conf
    $HOME/.vimrc
    $HOME/.config/nvim/init.vim
)

cp ${config_files[@]} .
