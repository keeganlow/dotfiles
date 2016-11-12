#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")"
git pull origin master
function doIt() {

	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
		--exclude ".gitconfig" --exclude "README.md" --exclude ".gitignore" --exclude "LICENSE-MIT.txt" -av --no-perms . ~
	source ~/.bashrc
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt
