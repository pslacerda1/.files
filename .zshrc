#
##
## Oh-My-Zsh configuration
##
#

export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="eastwood"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Update automatically without asking
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 7    # in days

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
HIST_STAMPS="yyyy-mm-dd"


# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(git fzf safe-paste)

source $ZSH/oh-my-zsh.sh


#
##
## Shell configuration
##
#

export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export LC_LOCALE=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='code'
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/peu/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/peu/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/peu/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/peu/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
