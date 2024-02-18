
export PATH=$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="lambda"
#fpath=("$HOME/.zsh/themes/pure" $fpath)
#autoload -U promptinit; promptinit
#prompt pure

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/.zsh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git docker colored-man-pages)
plugins=(docker colored-man-pages)

# Setup Homebrew completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

source $ZSH/oh-my-zsh.sh

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Starship prompt
# eval "$(starship init zsh)"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# export PYTHONSTARTUP=~/.python-startup.py

# Tell Phoenix how to link to file in error page stacktrace
export PLUG_EDITOR='vscode://file/__FILE__:__LINE__'

PATH="${HOME}/.local/bin:${PATH}"
PATH="/usr/local/opt/openjdk/bin:${PATH}"
PATH="/usr/local/sbin:${PATH}"

export PATH;

export LIBRARY_PATH=${LIBRARY_PATH}:/usr/local/opt/openssl/lib/

export STARDOG_HOME="${HOME}/.stardog"

# Enable history in erl and iex
export ERL_AFLAGS="-kernel shell_history_enabled"

# Install Erlang docs
export KERL_BUILD_DOCS="yes"
# See asdf-erlang docs
export KERL_CONFIGURE_OPTIONS="--disable-debug --without-javac"

# Enable iex history
export ERL_AFLAGS="-kernel shell_history enabled"

# Android stuff
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH=/usr/local/opt/postgresql@15/bin:$PATH

# Setup autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Activate mise
eval "$(mise activate zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
