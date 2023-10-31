# Path to oh-my-zsh
export ZSH="/Users/dubplate/.oh-my-zsh"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="af-magic"

# load zsh scripts
plugins=(
  git
  nvm
  zsh-autosuggestions
  tmux
  tmuxinator
  vi-mode
  poetry
  virtualenv
)

source $ZSH/oh-my-zsh.sh

# alias
alias ta="tmux attach -t"
alias ts="tmux new -s"
alias tl="tmux ls"


export PATH="/usr/local/sbin:$PATH"

# Python Stuff #
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# macports
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# https://superuser.com/questions/1209053/how-do-i-tell-homebrew-to-stop-running-brew-update-every-time-i-want-to-      install
export HOMEBREW_NO_AUTO_UPDATE=1

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
# Set the pyenv shims to initialize
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Formatting Docker ps #
# use via: $ docker ps --format=$FORMAT
FORMAT="\nID\t{{.ID}}\nIMAGE\t{{.Image}}\nCOMMAND\t{{.Command}}\nCREATED\t{{.RunningFor}}\nSTATUS\t{{.Status}}\nPORTS\t{{.Ports}}\nNAMES\t{{.Names}}\n"

###### TRASH SECTION - DON'T USE ########
# vscode things?
# [[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path zsh)"
#
# potentially unnecessary virtualenvs stuff given the pyenv section
# export WORKON_HOME=$HOME/.virtualenvs
# source /Users/dubplate/.pyenv/versions/mochi-new/bin/virtualenvwrapper.sh

