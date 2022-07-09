#!/usr/bin/env bash

XCODE_KEYBINDINGS_DIR=~/Library/Developer/Xcode/UserData/KeyBindings/

read -p "This script will create a folder $XCODE_KEYBINDINGS_DIR if it does not exist already, and it will copy all key binding configuration files, overwriting if needed. Do you want to proceed? (y/n) " -n 1 shouldInit;
echo "";

if [[ ! $shouldInit =~ ^[Yy]$ ]]; then
	echo "Okay, then. Nothing has been done. Exiting...";
	return;
fi;

[[ -d $XCODE_KEYBINDINGS_DIR ]] || mkdir $XCODE_KEYBINDINGS_DIR
cp *.idekeybindings $XCODE_KEYBINDINGS_DIR

echo "Done! I hope these key bindings are useful to you, have a great day!";
