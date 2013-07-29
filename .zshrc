
export HOME=/c/Users/martin.maillard

ZSH=$HOME/.oh-my-zsh
ACTUAL_ZSH=$HOME/.zsh

source $ACTUAL_ZSH/thismachine.zsh
source $ACTUAL_ZSH/windows.zsh
source $ACTUAL_ZSH/functions.zsh
source $ACTUAL_ZSH/shortcuts.zsh
source $ACTUAL_ZSH/aliases.zsh

ZSH_THEME="lambda"
source $ZSH/oh-my-zsh.sh

unsetopt correct_all

cd ~
