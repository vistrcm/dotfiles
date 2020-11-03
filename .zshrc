#zmodload zsh/zprof

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="awesomepanda"
#ZSH_THEME="minimal"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"


SHOW_AWS_PROMPT=false


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(virtualenv git git-flow brew gem knife mvn osx python ruby rvm sublime svn vagrant gnu-utils pip )
plugins=(
    aws
    brew
    colored-man-pages
    docker
    docker-compose
    fabric
    git
    git-extras
    gnu-utils
    gpg-agent
    history
    httpie
    kubectl
    osx
    python
    redis-cli
    sublime
)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/sbin:~/go/bin:~/bin

# locale
export LANG=en_US.UTF-8

# rvm

#alias subl="'/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl'"
#alias subl="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"
#alias nano="subl"

#### lc stuff
alias lc-dup-nodes="lc-node-list | awk '{ print \$2 }' | sort | uniq -d"
alias lc-my-nodes='lc-node-list| egrep -i "(sv|vitko)"'
alias lc-verbose='lc-node-list -f "%(id)s\t%(name)s\t%(ip)s\t%(rstatus)s\t%(password)s\t%(ram)s\t%(description)s"'

# gcloud stuff
alias gcil='gcloud compute instances list'

#### python stuff

alias chpep8='find ./ -iname "*.py" -exec pep8 {} +'

alias fixow='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user;killall Finder;echo "Open With has been rebuilt, Finder will relaunch"'

# syntax hilight
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# The next line updates PATH for the Google Cloud SDK.
#source '/Users/vist/misc/google-cloud-sdk/path.zsh.inc'

# The next line enables bash completion for gcloud.
#source '/Users/vist/misc/google-cloud-sdk/completion.zsh.inc'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

#eval $(docker-machine env dev)

# enable z
. /usr/local/etc/profile.d/z.sh

# disable history sharing
unsetopt share_history


#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# no need for pager
export PAGER="less -XF"

# aliases
alias diff="colordiff"

# load machine-specific aliases
[ -f ~/.aliases.zsh ] && source ~/.aliases.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/vist/misc/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/vist/misc/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/vist/misc/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/vist/misc/google-cloud-sdk/completion.zsh.inc'; fi

export EDITOR=vim

export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

#zprof
