sudo apt install zsh

##### Install Oh-my-zsh ########################################################
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

##### Install zsh-syntax-highlighting plugin ###################################
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

##### Install zsh-autosuggestions plugin #######################################
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

##### Install Fuzzy finder #####################################################
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

##### Install powerlevel10k ####################################################
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

ZSH_THEME="powerlevel10k/powerlevel10k"

echo "Restart terminal and apply following"

##### .zshrc ###################################################################
echo "Update .zshrc"

#### plugins=(
####  zsh-syntax-highlighting
####  zsh-autosuggestions
#### )

#### alias src="cd ~/source"
#### alias env="source env/bin/activate"

##### .p10k.zsh ################################################################
echo "Update .p10k.zsh"

### Move to left prompt below os_icon
#### virtualenv

### Uncomment at right prompt
#### time

#### typeset -g POWERLEVEL9K_PROMPT_ADD_NEWLINE=false

#### typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_GAP_CHAR='·'

### Comment out trucating of git branch names
#### (( $#branch > 32 )) && branch[13,-13]="…"

### Comment out not displaying tag if on branch
#### && -z $VCS_STATUS_LOCAL_BRANCH

### Comment out trucating of git tag names
#### (( $#tag > 32 )) && tag[13,-13]="…"

### Set default prompt symbol to ＄
#### typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIINS_CONTENT_EXPANSION='＄'
