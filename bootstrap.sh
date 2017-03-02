#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
	rsync --exclude ".DS_Store" \
		--exclude ".git/" \
		--exclude "atom/" \
		--exclude "bash/" \
		--exclude "git/" \
		--exclude "iterm/" \
		--exclude "bootstrap.sh" \
		--exclude "brew-cask.txt" \
		--exclude "brew.txt" \
		--exclude "npm.txt" \
		--exclude "README.md" \
		-avh --no-perms . ~;
	source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
