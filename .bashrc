# set command prompt
if [ "$TERM" = "xterm-color" ] || [ "$TERM" = "xterm-256color" ]; then

    # use color if terminal supports it
    BLACK="\[$(tput setaf 0)\]"
    RED="\[$(tput setaf 1)\]"
    GREEN="\[$(tput setaf 2)\]"
    YELLOW="\[$(tput setaf 3)\]"
    BLUE="\[$(tput setaf 4)\]"
    MAGENTA="\[$(tput setaf 5)\]"
    CYAN="\[$(tput setaf 6)\]"
    WHITE="\[$(tput setaf 7)\]"
    DEFAULT="\[$(tput sgr0)\]"

    # set command prompt to show current directory
    export PS1="${BLUE}\w> ${DEFAULT}"
else
    export PS1="\w> "
fi

# Establish a safe environment.
set -o ignoreeof         # Do not log out with <Ctrl-D>
set -o noclobber         # Do not overwrite files via '>'.
alias rm='rm -i'         # Prompt before removing files via 'rm'.
alias cp='cp -i'         # Prompt before overwriting files via 'cp'.
alias mv='mv -i'         # Prompt before overwriting files via 'mv'.
alias ln='ln -i'         # Prompt before overwriting files via 'ln'.

# Use 'less' instead of 'more'.
# Windows Git Bash provides 'less', but not 'more'.
alias less='less --quit-at-eof --no-init --tabs=4 --RAW-CONTROL-CHARS'
alias more='less'

# Add colors to 'ls'.
alias ls='ls -GF'

# Add color to 'grep' and relatives (when not piped or redirected).
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# When the shell exits, append to the history file instead of overwriting it.
shopt -s histappend

# Make the command line history ignore duplicate command lines.
export HISTCONTROL=erasedups:ignoredups

# Make the command-line history show dates and times.
export HISTTIMEFORMAT="%F %T "

# Support non-ASCII characters in terminal.
# Note: use LC_ALL='C' if you want sort to behave in expected way.
export LC_ALL='en_US.UTF-8'
. "$HOME/.cargo/env"
