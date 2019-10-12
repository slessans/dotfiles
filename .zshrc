setopt prompt_subst
unsetopt menu_complete   # do not autoselect the first completion entry
unsetopt flowcontrol
setopt auto_menu         # show completion menu on successive tab press
setopt complete_in_word
setopt always_to_end

export LSCOLORS="Gxfxcxdxbxegedabagacad"
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

for file in ~/.{zsh_prompt,aliases,functions,path,dockerfunc,extra,exports}; do
	if [[ -r "$file" ]] && [[ -f "$file" ]]; then
		# shellcheck source=/dev/null
		source "$file"
	fi
done
unset file