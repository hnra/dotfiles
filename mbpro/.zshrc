if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

_Z_CMD=zcd
[[ -r "/usr/share/z/z.sh" ]] && . /usr/share/z/z.sh

export DEFAULT_USER=henan
export EDITOR=nvim
export VISUAL=nvim
export GOBIN="/home/henan/go/bin"
export GDK_SCALE=1.5

LIGHT_PATH="/home/henan/.config/alacritty/light"

if [ -e $LIGHT_PATH ]; then
    export LIGHT=1
else
    export LIGHT=0
fi

source /home/henan/.rvm/scripts/rvm

alias kdestart="startx ~/.xinitrc kde"
alias vim="source /home/henan/.zshrc && nvim"
alias stach=stack
alias lim="LIGHT=1 nvim"
alias rmhs="rm -f *.hi *.o"
alias src="source /courses/TDDE09/labs/environment/bin/activate"

export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.local/bin/"

function cd() {
    builtin cd "$@"
    . /home/henan/auto_venv.sh
}

function z() {
    zcd "$@"
    . /home/henan/auto_venv.sh
}

