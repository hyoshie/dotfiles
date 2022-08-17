#!/bin/bash

cd $(dirname $0)

linked_files=(
	"tmux.conf"
	"zshrc"
)

for file in ${linked_files[@]}; do
	ln -s ${DOTFILE}/${file} ${HOME}/.${file}
done
