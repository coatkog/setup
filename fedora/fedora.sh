#!/bin/bash

# system - update
sudo dnf update
sudo dnf upgrade

# system - apps
sudo dnf install blackbox-terminal \
		 gnome-console \
                 gnome-tweaks \
		 google-chrome-stable
# TODO add flatpak apps

# system - directories
mkdir -p ~/source/repos

# system - shortcuts
# TODO

# system - gdm
# TODO setup through gdm settings app

# system - other
gsettings set org.gnome.desktop.interface show-battery-percentage true

# system - fonts
sudo dnf install fira-code-fonts rsms-inter-fonts
gsettings set org.gnome.desktop.interface font-name 'Inter 11'
gsettings set org.gnome.desktop.interface document-font-name 'Inter 11'
gsettings set org.gnome.desktop.interface monospace-font-name 'Fira Code 11'

# system - cursor
sudo dnf copr enable peterwu/rendezvous
sudo dnf install bibata-cursor-themes
gsettings set org.gnome.desktop.interface cursor-theme 'Bibata-Modern-Ice'

# system - theme
sudo dnf install adw-gtk3-theme
flatpak install org.gtk.Gtk3theme.adw-gtk3 org.gtk.Gtk3theme.adw-gtk3-dark
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark' && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

# terminal - apps
sudo dnf install neovim

# terminal - zsh
sudo dnf install zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
cp zshrc ~/.zshrc

# terminal - starship
curl -sS https://starship.rs/install.sh | sh
mkdir -p ~/.config
cp starship.toml ~/.config/startship.toml

# blackbox
gsettings set com.raggesilver.BlackBox delay-before-showing-floating-controls 'uint32 100'
gsettings set com.raggesilver.BlackBox floating-controls true
gsettings set com.raggesilver.BlackBox floating-controls-hover-area 'uint32 32'
gsettings set com.raggesilver.BlackBox font 'Fira Code 11'
gsettings set com.raggesilver.BlackBox notify-process-completion false
gsettings set com.raggesilver.BlackBox opacity 'uint32 90'
gsettings set com.raggesilver.BlackBox show-headerbar false
gsettings set com.raggesilver.BlackBox terminal-padding '(uint32 16, uint32 16, uint32 16, uint32 16)'

# extensions
sudo dnf remove gnome-shell-extension*

# extensions - tiling shell
# TODO import layouts.json through extension settings

