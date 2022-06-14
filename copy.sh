#!/bin/bash

config_files=(
    $HOME/.tmux.conf
    $HOME/.config/nvim/init.vim
    $HOME/.commonrc.d
    $HOME/.zshrc
)

cp -r ${config_files[@]} .
