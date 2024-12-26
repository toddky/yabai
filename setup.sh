#!/usr/bin/env bash
if ! command -v yabai &>/dev/null; then
	echo
	print-cmd brew install koekeishiya/formulae/yabai
	if yesno; then
		brew install koekeishiya/formulae/yabai
	fi
fi

if ! command -v jq &>/dev/null; then
	echo
	print-cmd brew install jq
	if yesno; then
		brew install jq
	fi
fi

if ! command -v skhd &>/dev/null; then
	echo
	print-cmd brew install koekeishiya/formulae/skhd
	if yesno; then
		brew install koekeishiya/formulae/skhd
	fi
fi

# Configure scripting addition
# https://github.com/koekeishiya/yabai/wiki/Installing-yabai-(latest-release)#configure-scripting-addition
yabai="$(which yabai)"
sha256="$(shasum -a 256 "$yabai" | cut -d' ' -f1)"
echo "$yabai $sha256"
sudoer_line="$(echo "$(whoami) ALL=(root) NOPASSWD: sha256:$sha256 $(which yabai) --load-sa")"
echo "$sudoer_line" | sudo tee /private/etc/sudoers.d/yabai

