if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export DEFAULT_USER=henan
export EDITOR=nvim
export VISUAL=nvim
export GOBIN="/home/henan/go/bin"
export GDK_SCALE=1.5

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

alias kdestart="startx ~/.xinitrc kde"
alias vim=nvim
alias sshliu="ssh -X henan076@remote-und.ida.liu.se"
alias chrome=google-chrome-stable
alias stach=stack
alias lim="LIGHT=1 nvim"

export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/go/src/notes"
export PATH="$PATH:$HOME/go/bin/"
export PATH="$PATH:$HOME/.local/bin/"
export PORT="4000"
export ASPNETCORE_ENVIRONMENT=Development

