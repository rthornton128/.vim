#!/bin/bash

ROOT=$HOME/.vim
VIMRC=$HOME/.vimrc

# Taken from https://vi.stackexchange.com/questions/9522/what-is-the-vim8-package-feature-and-how-should-i-use-it
function set_group () {
	local group=$1
	local path="$ROOT/pack/$group/start"
	echo "Processing group: $group"
	mkdir -p "$path"
	cd "$path" || exit
}

function clone_plugin () {
	local url=$1
	local repo=$(basename $url .git)
	if [ -d $repo ]; then
		cd $repo || exit
		local result=$(git pull --force)
		echo "$repo: $result"
		cd ..
	else
		echo "$repo: Cloning"
		git clone "$url"
	fi
}

# General plugins
set_group general
clone_plugin https://github.com/tpope/vim-commentary
clone_plugin https://github.com/tpope/vim-fugitive
clone_plugin https://github.com/tpope/vim-sensible
clone_plugin https://github.com/tpope/vim-surround
clone_plugin https://github.com/vim-airline/vim-airline
clone_plugin https://github.com/vim-airline/vim-airline-themes
clone_plugin https://github.com/scrooloose/nerdtree
clone_plugin https://github.com/dense-analysis/ale
clone_plugin https://github.com/junegunn/fzf
clone_plugin https://github.com/junegunn/fzf.vim
clone_plugin https://github.com/jiangmiao/auto-pairs
clone_plugin https://github.com/editorconfig/editorconfig-vim
clone_plugin https://github.com/morhetz/gruvbox
clone_plugin https://github.com/airblade/vim-gitgutter

# Language plugins
set_group ruby
clone_plugin https://github.com/vim-ruby/vim-ruby
clone_plugin https://github.com/tpope/vim-rails
clone_plugin https://github.com/tpope/vim-endwise
clone_plugin https://github.com/tpope/vim-bundler
clone_plugin https://github.com/tpope/vim-rake

set_group go
clone_plugin https://github.com/fatih/vim-go

# Theme plugins

printf "Checking for '$VIMRC': "
if [ ! -f "$VIMRC" ]; then
	echo "Linking"
	ln -s -v "$ROOT/vimrc" "$VIMRC"
else
	echo "Done"
fi
