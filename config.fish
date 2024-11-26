set fish_greeting # Clear greeting
# set path
set -g -x PATH /usr/local/bin $PATH

# Node
set -g -x PATH /Users/keita/.nodebrew/current/bin $PATH

# Flutter
set -g -x PATH /Users/keita/mint/flutter/bin $PATH
set -g -x PATH /Users/keita/mint/flutter/.pub-cache/bin $PATH

# Ruby
set -x PATH $HOME/.rbenv/bin $PATH
source (rbenv init - | psub)

# Go
set -x PATH $HOME/go/bin $PATH

# Python
status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source

# Poetry
set -x PATH $HOME/.local/bin $PATH

# Node
status --is-interactive; and source (nodenv init -|psub)

# mongo
set -x PATH /usr/local/Cellar/mongodb-community/8.0.1/bin $PATH

# Useful alias
alias grep 'grep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias g='git'
alias gcd='cd (git rev-parse --show-toplevel)'
alias bundlelocal='bundle install --path=vendor/bundle --binstubs=vendor/bin'
alias bundleglobal='bundle install'
alias cppinit='cp ~/mint/GitHub/dotfiles/cppinitForMac/* ./'
alias gconfig='cat ~/.gitconfig'

# Peco
function fish_user_key_bindings
  bind \cr peco_select_history
end
# GHQ
set GHQ_SELECTOR peco

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# eval /Users/keita/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
