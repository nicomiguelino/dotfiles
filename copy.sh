#!/bin/bash

config_files=(
    $HOME/.tmux.conf
    $HOME/.vimrc
    $HOME/.config/nvim/init.vim
    $HOME/nicomiguelino.sh
)

cp ${config_files[@]} .
