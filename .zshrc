# ________________________/\\\______________________________________
#  _______________________\/\\\______________________________________
#   _________________/\\\__\/\\\______________________________________
#    __/\\/\\\\\\____\///___\/\\\__________/\\/\\\\\\\____/\\\____/\\\_
#     _\/\\\////\\\____/\\\__\/\\\\\\\\\___\/\\\/////\\\__\/\\\___\/\\\_
#      _\/\\\__\//\\\__\/\\\__\/\\\////\\\__\/\\\___\///___\/\\\___\/\\\_
#       _\/\\\___\/\\\__\/\\\__\/\\\__\/\\\__\/\\\__________\/\\\___\/\\\_
#        _\/\\\___\/\\\__\/\\\__\/\\\\\\\\\___\/\\\__________\//\\\\\\\\\__
#         _\///____\///___\///___\/////////____\///____________\/////////___
#
# These are my dotfiles
# System: MacOS
# Website: https://nibru.dev
# E-Mail: nikolaus.brunner@protonmail.ch
# Repository: https://github.com/nikbrunner/dotfiles-apple
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# export TERM=screen-256color

source $ZSH/oh-my-zsh.sh

# Basics =================================================================
alias list="ls -la | grep "^d" && ls -la | grep "^-" && ls -la | grep \"^l\""
alias clr="clear"

# Dotfiles ===============================================================
alias df='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
## dotfiles-push / dfp
alias dfp="df commit -a -m \"Updates\" && df push"

## Morning Script
## TODO Make this globally available
alias morning="sh ~/.scripts/morning.sh"
alias update-stoic="npm run dist && sh ~/Documents/notes/getStoicTheme.sh"

alias ls="ls -a"

# Edit Config Files ======================================================
EDITOR="nvim"
NVIM_PATH="~/.config/nvim"
TMUX_PATH="~"
alias vim="nvim"
alias v="nvim"
alias dfconfig="$EDITOR -S ~/df.vim"
alias vimconfig="$EDITOR $NVIM_PATH/init.vim"
alias zshconfig="$EDITOR ~/.zshrc"
alias tmuxconfig="$EDITOR $TMUX_PATH/.tmux.conf"
alias alaconfig="$EDITOR ~/.config/alacritty/alacritty.yml"

# Path Declaration =======================================================
DOCUMENTS_PATH="$HOME/Documents"
# NOTES_PATH="$DOCUMENTS_PATH/notes"
DEV_PATH="$DOCUMENTS_PATH/Dev"
REPOSITORIES_PATH="$DEV_PATH/Repositories"
DCD_REPOSITORIES_PATH="$REPOSITORIES_PATH/DCD"
OWN_REPOSITORIES_PATH="$REPOSITORIES_PATH/nibru"

# Navigation =============================================================
alias home="cd $HOME"
alias docs="cd $DOCUMENTS_PATH"
alias dev="cd $DEV_PATH"
alias notes="cd $NOTES_PATH"
alias own="cd $OWN_REPOSITORIES_PATH"

# alias vim-notes="vim -S $NOTES_PATH/workspace.vim"

# Own Projects ============================================================
alias nd="cd $OWN_REPOSITORIES_PATH/nibru.dev"
alias ndn="cd $OWN_REPOSITORIES_PATH/nibru.dev-next"
alias vim-nd="vim -S $OWN_REPOSITORIES_PATH/nibru.dev/workspace.vim"
alias vim-ndn="vim -S $OWN_REPOSITORIES_PATH/nibru.dev-next/workspace.vim"

# DCD ====================================================================
alias dcd="cd $DCD_REPOSITORIES_PATH"
alias bc-homepage="cd $DCD_REPOSITORIES_PATH/bc-homepage"
alias bc-client="cd $DCD_REPOSITORIES_PATH/bc-desktop-client"
alias bc-tools="cd $DCD_REPOSITORIES_PATH/bc-desktop-tools"
alias bc-bpc="cd $DCD_REPOSITORIES_PATH/bc-tools-bikepricecalculator"
alias bc-brandworld-bergamont="cd $DCD_REPOSITORIES_PATH/bc-brandworld-bergamont"

# Path Exports ===========================================================
# export PATH=/usr/bin/python:$PATH
# export PATH=/usr/bin/python3:$PATH


# fzf ====================================================================
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --no-ignore-vcs'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
alias fzfi='rg --files --hidden --follow --no-ignore-vcs -g "!{node_modules,.git}" | fzf`'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Node ===================================================================
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
fpath=($fpath "/home/nibru/.zfunctions")

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship
