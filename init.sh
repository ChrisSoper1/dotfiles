#!/bin/bash

WDIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)
bDATE=$(date -Iseconds)

test -r $HOME/.bashrc || mv $HOME/.bashrc $HOME/.bashrc.${bDATE}
ln -s ${WDIR}/.bashrc $HOME/.bashrc

test -r $HOME/.vimrc || mv $HOME/.vimrc $HOME/.vimrc.${bDATE}
ln -s ${WDIR}/.vimrc $HOME/.vimrc

test -r $HOME/.tmux.conf || mv $HOME/.tmux.conf $HOME/.tmux.conf.${bDATE}
ln -s ${WDIR}/.tmux.conf $HOME/.tmux.conf

test -r $HOME/.profile || mv $HOME/.profile $HOME/.profile.${bDATE}
ln -s ${WDIR}/.profile $HOME/.profile

test -r $HOME/.gitconfig || mv $HOME/.gitconfig $HOME/.gitconfig.${bDATE}
ln -s ${WDIR}/.gitconfig $HOME/.gitconfig
