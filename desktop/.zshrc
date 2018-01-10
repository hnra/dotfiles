#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
export DEFAULT_USER=henan
export GOPATH=~/go
export PORT="8080"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$GOPATH/src/tetris"
export PATH="$PATH:$GOPATH/src/notes"
export PATH="$PATH:$HOME/.rvm/bin"
export EDITOR=nvim
export VISUAL=nvim
export __GL_THREADED_OPTIMIZATIONS=1
# aliases
alias vim=nvim
alias grep=rg
alias chrome=google-chrome-stable
alias wsteam="wine ~/.wine/drive_c/Program\ Files\ \(x86\)/Steam/Steam.exe"
alias dunstp="killall -SIGUSR1 dunst"
alias dunstr="killall -SIGUSR2 dunst"
alias stach=stack

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

