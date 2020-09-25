#  /$$$$$$$$  /$$$$$$  /$$   /$$
# |_____ $$  /$$__  $$| $$  | $$
#      /$$/ | $$  \__/| $$  | $$
#     /$$/  |  $$$$$$ | $$$$$$$$
#    /$$/    \____  $$| $$__  $$
#   /$$/     /$$  \ $$| $$  | $$
#  /$$$$$$$$|  $$$$$$/| $$  | $$
# |________/ \______/ |__/  |__/

# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/adi/.oh-my-zsh"

# Theme, set to 'random' to load a different theme at every startup
# to know which specific one was loaded, run: echo $RANDOM_THEME
#ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME="lighthaus"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

#  _____  _             _
# |  __ \| |           (_)
# | |__) | |_   _  __ _ _ _ __  ___
# |  ___/| | | | |/ _` | | '_ \/ __|
# | |    | | |_| | (_| | | | | \__ \
# |_|    |_|\__,_|\__, |_|_| |_|___/
#                  __/ |
#                 |___/

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  fzf
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  colored-man-pages
  colorize
  virtualenv)

  source $ZSH/oh-my-zsh.sh

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

#           _ _
#     /\   | (_)
#    /  \  | |_  __ _ ___
#   / /\ \ | | |/ _` / __|
#  / ____ \| | | (_| \__ \
# /_/    \_\_|_|\__,_|___/

alias zshrc="vim ~/.zshrc"
alias i3config="vim ~/.config/i3/config"
alias vimrc="vim ~/.vimrc"

alias fast='./fast'
alias wclock='./wclock.sh'
alias ra='ranger'
alias gt='gotop -c monokai'
alias cm='cmatrix'

alias ':q'='exit'
alias ':Q'='exit'
alias ':l'='clear'
alias ':L'='clear'

# lsd aliases
alias ls='lsd'
alias 'ls -a'='lsd -a'
alias 'ls -l'='lsd -l'
alias 'ls -al'='lsd -al'
