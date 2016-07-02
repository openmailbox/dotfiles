alias tmux="TERM=screen-256color-bce tmux"
#alias vim="mvim -v"
alias be="bundle exec"

export EDITOR="vim"
bindkey -v

#Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="triumverate"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Example aliases
alias be="bundle exec"
alias rspec="nocorrect rspec"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Change this value to set how frequently ZSH updates¬
export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Customize to your needs...
export CVSEDITOR=vim
#export CVSROOT=brandon@legendary.org:/usr/local/cvsroot

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin # $PATH

# Ruboto stuff
export ANDROID_HOME=/home/brandon/Documents/Code/Java/android-sdk-linux
export PATH=$PATH:/home/brandon/Documents/Code/Java/android-sdk-linux/tools
export PATH=$PATH:/home/brandon/Documents/Code/Java/android-sdk-linux/platform-tools
export PATH=$PATH:/home/brandon/Documents/Code/Java/android-sdk-linux/build-tools/19.0.1

# make ls display colors, reinforce with CLICOLOR and LSCOLORS
export CLICOLOR=1
 
# LSCOLORS order: DIR, SYM_LINK, SOCKET, PIPE, EXE, BLOCK_SP
# CHAR_SP, EXE_SUID, EXE_GUID, DIR_STICKY, DIR_WO_STICKY
# a = black, b = red, c = green, d = brown, e = blue,
# f = magenta g = cyan, h = light gray, x = default
# lowercase is bold
export LSCOLORS=exgxxxxxcx

export TERM=xterm-256color

# For dircolors
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

export KETTLE_PATH=/home/brandon/kettle/data-integration
export KETTLE_HOME=/home/brandon

export PATH=$PATH:/home/brandon/dart-sdk/bin

source ~/.rvm/scripts/rvm
source ~/optoro_env.bash

# added by travis gem
[ -f /home/brandon/.travis/travis.sh ] && source /home/brandon/.travis/travis.sh

# solves berkshelf timeout errors
export SOLVE_TIMEOUT=600

export NVM_DIR="/home/brandon/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="/home/brandon/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Go
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/Documents/code/go
export PATH=$PATH:$GOPATH/bin

export PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting
