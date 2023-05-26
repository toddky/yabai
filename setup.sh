#!/usr/bin/env bash
if ! command -v yabai &>/dev/null; then
	print-cmd brew install koekeishiya/formulae/yabai
	yesno || exit $?
	brew install koekeishiya/formulae/yabai
fi

