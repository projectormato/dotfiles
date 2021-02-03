set fish_greeting # Clear greeting
#set path
set -g -x PATH /usr/local/bin $PATH

# Path to Oh My Fish install.
set -gx OMF_PATH $HOME/.local/share/omf
# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG $HOME/.config/omf
# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

#Ruby
set -x PATH $HOME/.rbenv/bin $PATH
source (rbenv init - | psub)

#Go
set -x PATH /usr/local/go/bin $PATH
set -x PATH $PATH $GOPATH/bin 
set -x GOPATH $HOME/go

#added by Anaconda3 4.4.0 installer
set -x PATH /home/keita/anaconda3/bin $PATH

# Useful alias 
alias grep 'grep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias g='git'
alias gcd='cd (git rev-parse --show-toplevel)'
alias vi='nvim'
alias bundlelocal='bundle install --path=vendor/bundle --binstubs=vendor/bin'
alias bundleglobal='bundle install'
alias cppinit='cp ~/mint/xmlpro/cppinit/* ./'

alias gconfig='cat ~/.gitconfig'


#peco
function fish_user_key_bindings
  bind \cr peco_select_history
end
