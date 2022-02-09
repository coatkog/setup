cd ~

sudo apt install -y tilix

##### Apply configuration ######################################################
dconf load /com/gexperts/Tilix/ < tilix.dconf

##### Terminal rc ##############################################################
### Tilix not being able to persist current directory when opening new terminal

sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh

echo "Update .zshrc"
echo 'if [ $TILIX_ID ] || [ $VTE_VERSION ]; then'
echo "        source /etc/profile.d/vte.sh"
echo "fi"
