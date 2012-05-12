if [[ -z $NOTTY ]] && tty >/dev/null; then
  for a in $(find $HOME/.cue ! -type d -name '_*' | sort); do
    source $a
  done
fi
#!/bin/bash

_esc=""
_bell=$(perl -e 'printf "%c", 7')

function color { echo -n "$_esc[38;5;${1}m"; }
function bgcolor { echo -n "$_esc[48;5;${1}m"; }
function title { echo -n "$_esc]2;${1}$_bell"; }

TERM="xterm-256color"
