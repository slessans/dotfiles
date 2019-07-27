#!/bin/bash

# Load .bashrc, which loads all the other dotfiles
if [[ -r "${HOME}/.bashrc" ]]; then
	# shellcheck source=/dev/null
	source "${HOME}/.bashrc"
fi
