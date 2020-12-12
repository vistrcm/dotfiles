# some profiling
#zmodload zsh/zprof

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="awesomepanda"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# source required paths
source '/Users/vist/misc/google-cloud-sdk/path.zsh.inc'

SHOW_AWS_PROMPT=false


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(golang colored-man-pages docker docker-compose gnu-utils gpg-agent httpie kubectl osx pip python rsync sublime aws)
plugins=(
colored-man-pages
git
httpie
docker
docker-compose
gnu-utils
httpie
osx
rsync
gpg-agent
aws
kubectl
ssh-agent
)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH:$HOME/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='emacs -nw'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias diff="colordiff"
#alias subl="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"
#alias nano="subl"
# gcloud stuff
alias gcil='gcloud compute instances list'


# syntax highlight
test -e "/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" && source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# local machine specific aliases and settings
test -e "${HOME}/.local.zsh" && source "${HOME}/.local.zsh"

export HOMEBREW_GITHUB_API_TOKEN=$(cat ~/.creds/HOMEBREW_GITHUB_API_TOKEN)

export GOPATH=$HOME/proj/go
export PATH=$PATH:$GOPATH/bin


export LESS=${LESS}FX


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/vist/misc/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/vist/misc/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/vist/misc/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/vist/misc/google-cloud-sdk/completion.zsh.inc'; fi


# z
. /usr/local/etc/profile.d/z.sh

# no need for pager
export PAGER="less -XF"

unsetopt share_history


# config for dotfiles
# details:
# https://www.atlassian.com/git/tutorials/dotfiles
alias config='git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'

# gpg stuff

export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

# print profile information
#zprof
