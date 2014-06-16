# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

#stty ixany
#stty stop undef # to unmap ctrl-s
#

setopt interactivecomments

export SHELL=/usr/bin/zsh # TODO
export EDITOR=/usr/bin/vim
export TERM="xterm-256color"
export ZSH_TMUX_AUTOSTART=true

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

# User configuration
bindkey -v      # vi mode
set -o vi

# fasd
eval "$(fasd --init auto)"

# virtualenvwrapper
export WORKON_HOME="$HOME/.virtualenvs"

# PATHS
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:~/scripts/:
export PATH=$PATH:~/.gem/ruby/2.1.0/bin
export PATH=$PATH:/opt/android-sdk/tools/
export PATH=$PATH:/opt/android-sdk/platform-tools/

#
setxkbmap -option caps:escape

# Aliases
alias vi='vim'
alias utar='tar -zxvf'
alias ackpy='ack --smart-case --python'
alias ackjs='ack --smart-case --js'
alias ackhtml='ack --smart-case --html'
alias ackcss='ack --smart-case --css --sass --less'

# modified commands
alias diff='colordiff'              # requires colordiff package
alias grep='grep -n --color=auto'
alias more='less'
alias df='df -h'
alias du='du -c -h'
alias du1='du -d 1 -c -h'
alias mkdir='mkdir -p -v'
alias ping='ping -c 5'
alias ..='cd ..'

# ls
alias ls='ls -hF --color=auto'
alias lr='ls -R'                    # recursive ls
alias ll='ls -lh'
alias la='ll -A'
alias lx='ll -BX'                   # sort by extension
alias lz='ll -rS'                   # sort by size
alias lt='ll -rt'                   # sort by date
alias lm='la | more'

# safety features
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'                    # 'rm -i' prompts for every file
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# pacman aliases (others are diffined in the archlinux plugin)
alias pacl="pacman -Sl"    # '[l]ist'           - list all packages of a repository
alias pacll="pacman -Qqm"  # '[l]ist [l]ocal'   - list all packages which were locally installed (e.g. AUR packages)
alias paclo="pacman -Qdt"  # '[l]ist [o]rphans' - list all packages which are orphaned
alias paco="pacman -Qo"    # '[o]wner'          - determine which package owns a given file
alias pacf="pacman -Ql"    # '[f]iles'          - list all files installed by a given package
alias pacc="pacman -Sc"    # '[c]lean cache'    - delete all not currently installed package files
alias pacm="makepkg -fci"  # '[m]ake'           - make package from PKGBUILD file in current directory


# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git django archlinux virtualenv virtualenvwrapper vi-mode tmux systemd colored-man)

source $ZSH/oh-my-zsh.sh
