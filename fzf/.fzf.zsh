# Setup fzf
# ---------
if [[ ! "$PATH" == */home/luc/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/luc/.fzf/bin"
fi

source <(fzf --zsh)
