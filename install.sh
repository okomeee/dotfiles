#!/bin/bash

# dotfiles
ln -s ${HOME}/.dotfiles/.vim ${HOME}/.vim
ln -s ${HOME}/.dotfiles/.vim/.vimrc ${HOME}/.vimrc
ln -s ${HOME}/.dotfiles/.vim/.vimrc ${HOME}/.ideavimrc
ln -s ${HOME}/.dotfiles/.zsh/.zshenv ${HOME}/.zshenv
ln -s ${HOME}/.dotfiles/.gitconfig ${HOME}/.gitconfig
ln -s ${HOME}/.dotfiles/.zsh ${HOME}/.zsh
ln -s ${HOME}/.dotfiles/.zsh/.zshenv ${HOME}/.zshenv
ln -s ${HOME}/.dotfiles/.zsh/.zshrc ${HOME}/.zshrc
ln -s ${HOME}/.dotfiles/.bashrc ${HOME}/.bashrc
ln -s ${HOME}/.dotfiles/.inputrc ${HOME}/.inputrc

# 設定の反映
exec $SHELL -l

