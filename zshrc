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

# Key bindings
#bindkey "^[[1;5D" backward-word 
#bindkey "^[OD" backward-word
#bindkey "^[[1;5C" forward-word
#bindkey "^[OC" forward-word
#bindkey "^[OF" end-of-line
#bindkey "^[OH" beginning-of-line
#bindkey "^[[C" forward-char
#bindkey "^[[D" backward-char

# vi style incremental search
#bindkey '^R' history-incremental-search-backward
#bindkey '^S' history-incremental-search-forward
#bindkey '^P' history-search-backward
#bindkey '^N' history-search-forward

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
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
export CVSROOT=brandon@legendary.org:/usr/local/cvsroot
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin: # $PATH
export PATH=$PATH:/opt/vagrant/bin # Vagrant 

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

export PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting
source ~/.rvm/scripts/rvm
