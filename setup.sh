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
