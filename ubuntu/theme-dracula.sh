cd ~
mkdir -p .icons
mkdir -p .themes
mkdir -p .local/share/backgrounds

##### GTK Dracula theme ########################################################
### https://draculatheme.com/gtk

wget https://github.com/dracula/gtk/archive/master.zip
unzip master.zip -d .themes/
mv .themes/gtk-master/ .themes/Dracula

gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
gsettings set org.gnome.desktop.wm.preferences theme "Dracula"

sudo cp $HOME/.local/share/gnome-shell/extensions/user-theme@gnome-shell-extensions.gcampax.github.com/schemas/org.gnome.shell.extensions.user-theme.gschema.xml /usr/share/glib-2.0/schemas
sudo glib-compile-schemas /usr/share/glib-2.0/schemas

gsettings set org.gnome.shell.extensions.user-theme name "Dracula"

rm master.zip

##### GTK Dracula icons ########################################################
### https://draculatheme.com/gtk

wget https://github.com/dracula/gtk/files/5214870/Dracula.zip
unzip Dracula.zip -d .icons/

gsettings set org.gnome.desktop.interface icon-theme "Dracula"

rm Dracula.zip

##### Wallpaper ################################################################

wget https://raw.githubusercontent.com/dracula/wallpaper/master/ubuntu-1.png

mv ubuntu-1.png .local/share/backgrounds

gsettings set org.gnome.desktop.background picture-uri file://$HOME/.local/share/backgrounds/ubuntu-1.png
gsettings set org.gnome.desktop.screensaver picture-uri file://$HOME/.local/share/backgrounds/ubuntu-1.png
