if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# _Z_CMD=zcd
[[ -r "/usr/share/z/z.sh" ]] && . /usr/share/z/z.sh

export DEFAULT_USER=henan
export EDITOR=nvim
export VISUAL=nvim
export GDK_SCALE=1.5
export GDK_DPI_SCALE=1.5

LIGHT_PATH="/home/henan/.config/alacritty/light"

if [ -e $LIGHT_PATH ]; then
    export LIGHT=1
else
    export LIGHT=0
fi

alias kdestart="startx ~/.xinitrc kde"
alias vim="source /home/henan/.zshrc && nvim"
alias stach=stack
alias lim="LIGHT=1 nvim"
alias rmhs="rm -f *.hi *.o"
alias ipy="ipython"
alias jpy="jupyter lab"
alias jpyn="jupyter notebook"

export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.npm/bin"

# function cd() {
#     builtin cd "$@"
#     . /home/henan/auto_venv.sh
# }

# function z() {
#     zcd "$@"
#     . /home/henan/auto_venv.sh
# }

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
