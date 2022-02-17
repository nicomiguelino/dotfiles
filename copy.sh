#!/bin/bash

config_files=(
    $HOME/.tmux.conf
    # $HOME/.vimrc # TODO: Uncomment when ready.
    $HOME/.config/nvim/init.vim
    $HOME/.commonrc.d
)

cp -r ${config_files[@]} .
