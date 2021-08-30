#!/bin/zsh

# error message
command_not_found_handler() {
  printf "\nahh shit, command not found\n\033[0;31m(╯°□°)╯︵ ┻━┻\n\n"
  exit 127
}

# prompt
PROMPT='%F{green}%m%f in %B%F{#299b9b}%~%f%b $(git_status)
%f%F{#777ca5}(%B%F{red}%?%f%b%F{#777ca5})>%b%f '
setopt prompt_subst
setopt autocd

git_status() {
  ref=$(git symbolic-ref --quiet --short HEAD 2>/dev/null || git rev-parse --short HEAD 2>/dev/null)
  if [ $? -eq 0 ]; then
    echo -n "on %B%F{magenta}$ref"
    [[ $(git status --short | wc -l) -ne 0 ]] && echo -n "%F{yellow}*"
  fi
}

# vi mode
bindkey -v
export KEYTIMEOUT=1

# cursor change
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
    [[ $1 = 'block' ]]; then
    echo -ne '\e[2 q'
  elif [[ ${KEYMAP} == main ]] ||
    [[ ${KEYMAP} == viins ]] ||
    [[ ${KEYMAP} = '' ]] ||
    [[ $1 = 'beam' ]]; then
    echo -ne '\e[6 q'
  fi
}

zle -N zle-keymap-select

zle-line-init() {
  echo -ne "\e[6 q"
}

echo -ne '\e[6 q'
preexec() { echo -ne '\e[6 q'; }
