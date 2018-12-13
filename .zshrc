#
# User configuration sourced by interactive shells

# add .local/bin to path
path+=('/home/camille/.local/bin')
export PATH

# Define zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Adding custom completions and function
fpath=("$ZIM_HOME/custom/completions" $fpath)
fpath=("$ZIM_HOME/custom/functions" $fpath)
autoload -Uz mp
autoload -Uz compinit
compinit

# Define PowerLevel9k theme location
POWERLEVEL9K_INSTALLATION_PATH=~/.zim/modules/prompt/external-themes/powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_MODE='nerdfont-complete'


# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

