# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.  export ZSH=/home/amund/.oh-my-zsh
  export PATH=$PATH:/home/amund/bin/
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
#Pluginmanger
source $HOME/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
#antigen bundle zsh-users/autojump
#antigen bundle command-not-found
#antigen bundle zsh-users/debianreso
#antigen bundle vi-mode


antigen theme agnoster

antigen apply
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





#if [[ -f ~/.zpm/zpm.zsh ]]; then
#	source ~/.zpm/zpm.zsh
#else
#	git clone --recursive https://github.com/horosgrisa/zpm ~/.zpm
#	source ~/.zpm/zpm.zsh
#fi


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(
#  git
#  zsh-syntax-highlighting


#source $ZSH/oh-my-zsh.sh

# setting vim keys
bindkey -v

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
 export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias vimconfig="nvim ~/.config_files/init.vim"
alias py="python3"
alias yavide="gvim --servername yavide -f -N -u /opt/yavide/.vimrc"
alias vim="nvim"
alias luaconfig="nvim ~/.config_files/awesome/rc.lua"
# Yavide alias
alias yavide="gvim --servername yavide -f -N -u /opt/yavide/.vimrc -u /opt/yavide/.vimrc"
alias nosetests="nosetests3"
alias windows_remote="xfreerdp /u:amundis /v:win.uio.no /w:1920 /h:1080 /cert-ignore"
alias extarz="tar -xvzf"
alias extar="tar -xvf"
alias windows="xfreerdp /v:win.uio.no /d:uio /u:amundis /size:2560x1440"
alias ifi="ssh amundis@login.ifi.uio.no"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
