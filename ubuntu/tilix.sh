cd ~

sudo apt install tilix

##### Apply configuration ######################################################
dconf load /com/gexperts/Tilix/ < ~/source/repos/ubuntu/tilix.dconf

##### Terminal rc ##############################################################
### Tilix not being able to persist current directory when opening new terminal
echo "Update .zshrc"
echo 'if [ $TILIX_ID ] || [ $VTE_VERSION ]; then'
echo "        source /etc/profile.d/vte.sh"
echo "fi"
