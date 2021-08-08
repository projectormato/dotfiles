set fish_greeting # Clear greeting
set -gx PATH /usr/local/bin $PATH

# Path to Oh My Fish install.
set -gx OMF_PATH $HOME/.local/share/omf
# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG $HOME/.config/omf
# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# Useful alias 
alias grep 'grep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias g='git'
alias gcd='cd (git rev-parse --show-toplevel)'
alias bundlelocal='bundle install --path=vendor/bundle --binstubs=vendor/bin'
alias bundleglobal='bundle install'
alias cppinit='cp ~/mint/xmlpro/cppinit/* ./'

#peco
function fish_user_key_bindings
  bind \cr peco_select_history
end
