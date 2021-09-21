##### Install powerlevel10k ####################################################
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

##### .zshrc ###################################################################
echo "Update .zshrc"

#### ZSH_THEME="powerlevel10k/powerlevel10k"

##### .p10k.zsh ################################################################
echo "Restart terminal and update .p10k.zsh"

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
