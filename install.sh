#!/bin/bash

create_dirs() {
	declare -a dirs=(
		"$HOME/Downloads/torrents"
		"$HOME/Desktop/Screenshots"
		"$HOME/Codespace"
	)

	for i in "${dirs[@]}"; do
		mkdir "$i"
	done
}

build_xcode() {
	if ! xcode-select --print-path &> /dev/null; then
		xcode-select --install &> /dev/null

		until xcode-select --print-path &> /dev/null; do
			sleep 5
		done

		sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer
		sudo xcodebuild -license
	fi
}

install_brew() {
	if ! command -v "brew" &> /dev/null; then
		printf "Homebrew not found, installing."
		# install homebrew
		/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
		# set path
		eval "$(/opt/homebrew/bin/brew shellenv)"
	fi
	
	printf "Installing homebrew packages..."
	brew bundle
}

install_app_store_apps() {
	mas install 497799835 # Xcode
	mas install 1509590766 # Mutekey
}

printf "🗄  Creating directories\n"
create_dirs

printf "🛠  Installing Xcode Command Line Tools\n"
build_xcode

printf "🍺  Installing Homebrew packages\n"
install_brew

printf "🛍️  Installing Mac App Store apps\n"
install_app_store_apps

printf "🛠  Set Xcode path\n"
sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer

printf "💻  Set macOS preferences\n"
./macos/.macos

printf "🐗  Stow dotfiles\n"
stow alacritty colorls fzf git nvim skhd starship tmux vim yabai z zsh

printf "✨  Done!\n"
