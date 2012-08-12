# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

if [ -d ~/bin/ ]
then
        PATH=$PATH:~/bin/
        export PATH

fi

# Put your fun stuff here.
#aliases 
alias rm="rm -i"
alias ll="ls -al"
alias l="ls -l"
#alias "svndiff"='svn diff ${@}|colordiff'
alias "shortPS1"='export PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \W \$\[\033[00m\] "'
alias "diff"='colordiff'

#colored man

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# 
export BROWSER="google-chrome"



#trackpoint scroll

#xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation" 8 1
#xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Button" 8 2



# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

#alias tail='colortail'




# tab-completion for git subcommands
# (this is for git installed via MacPorts: `sudo port install git-core +svn`)
#source /opt/local/share/doc/git-core/contrib/completion/git-completion.bash
. /usr/local/Cellar//stgit/0.15/share/stgit/completion/stgit-completion.bash

# git status with a dirty flag
function __git_status_flag {
  git_status="$(git status 2> /dev/null)"
  remote_pattern="^# Your branch is (.*) of"
  diverge_pattern="# Your branch and (.*) have diverged"
  if [[ ! ${git_status}} =~ "working directory clean" ]]; then
    state="⚡"
    spacer=" "
  fi

  if [[ ${git_status} =~ ${remote_pattern} ]]; then
    spacer=" "
    if [[ ${BASH_REMATCH[1]} == "ahead" ]]; then
      remote="↑"
    else
      remote="↓"
    fi
  fi

  if [[ ${git_status} =~ ${diverge_pattern} ]]; then
    remote="↕"
    spacer=" "
  fi

  echo "${state}${remote}${spacer}"
}

# the prompt itself
PS1='\[\e[32m\]\u@\[\e[1m\]\h\[\e[22m\]:\[\e[1;34m\]\w\[\e[22;35m\]$(__git_ps1 " [\[\e[33m\]$(__git_status_flag)\[\e[35m\]%s]")\[\e[33m\] \$ \[\e[0m\]'



### SVN staff
# colordiff
svndiff()
{
	svn diff "${@}" | colordiff
}

alias subl="'/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl'"
alias nano="subl"
export EDITOR="subl"


#### lc stuff
alias lc-dup-nodes="lc-node-list | awk '{ print \$2 }' | sort | uniq -d"


#export PATH=/usr/local/sbin:$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=/usr/local/bin:$PATH:/usr/local/sbin


# colors 
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

