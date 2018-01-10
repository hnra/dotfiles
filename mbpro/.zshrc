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
alias yaourtu="yaourt -Sau"
alias rmdir=trash
alias rm=trash

export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/go/src/notes"
export PATH="$PATH:$HOME/go/bin/"
export PATH="$PATH:$HOME/.local/bin/"
export PORT="4000"

trash() {
  if [[ $2 ]]; then
    echo "Wrong number of arguments"
  else
    if [[ -d $1 ]]; then
      mv $1 $HOME/.trash
      echo "Directory moved to trash"
    elif [[ -f $1 ]]; then
      mv $1 $HOME/.trash
      echo "File moved to trash"
    else
      echo "Invalid argument"
    fi
  fi
}

