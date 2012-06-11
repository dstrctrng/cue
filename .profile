#!/bin/bash

source "$HOME/.cue/bin/_nim"
source "$HOME/.cue/bin/_bindings"
source "$HOME/.cue/bin/_prompt"

PROMPT_COMMAND=def_prompt
PS2="\$prnSTART > \$prnEND"
PS1="\$prnSTART\$prnPSINFO\$PSFILL \$prnHOSTNAME\$prnEND\n-- \$SHLVL:\$HISTCMD \$prnMODE=> "

TERM="xterm-256color"
