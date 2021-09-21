##### Install zsh-syntax-highlighting plugin ###################################
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

##### Install zsh-autosuggestions plugin #######################################
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

##### Install Fuzzy finder #####################################################
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

##### .zshrc ###################################################################
echo "Update .zshrc"

#### plugins=(
####  zsh-syntax-highlighting
####  zsh-autosuggestions
#### )

#### alias src="cd ~/source"
#### alias env="source env/bin/activate"
