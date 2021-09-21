cd ~
mkdir -p .fonts

##### Fira Code Nerd ###########################################################
### https://www.nerdfonts.com/font-downloads

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
unzip FiraCode.zip -d .fonts/

rm FiraCode.zip

##### Clear Sans ###############################################################
### https://www.fontsquirrel.com/fonts/clear-sans

wget https://www.fontsquirrel.com/fonts/download/clear-sans
unzip clear-sans.zip -d .fonts/

rm clear-sans.zip

##### Apply fonts ##############################################################
gsettings set org.gnome.desktop.interface font-name 'Clear Sans 11'
gsettings set org.gnome.desktop.interface document-font-name 'Clear Sans Light, Light 11'
gsettings set org.gnome.desktop.interface monospace-font-name 'FiraCode Nerd Font Mono 13'
