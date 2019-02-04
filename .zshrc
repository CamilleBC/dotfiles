# Filename:     .zshrc
# Purpose:      config file for z shell
# Author:       Camille Baillat
# License:      This file is licensed under the Apache licence

setup_macos()
{
    # load homebrew fix script
    source $HOME/.brewconfig.zsh
}

setup_linux()
{
    # aliases
    alias pacinstall='trizen -Syu'

    # add .local/bin to path
    path+=('/home/camille/.local/bin')
    export PATH
}

os_check()
{
    local system=$(uname -s)
    case $system in
        Darwin)
            setup_macos
            ;;
        Linux)
            setup_linux
            ;;
    esac
}

source_config_files() {
    local ZSH_CONFIG="${HOME}/.config/zsh"
    # source all the zsh config files
    # hooks and setopt need to be loaded first to avoid overwriting user settings
    source "${ZSH_CONFIG}/zsh_hooks.zsh"
    source "${ZSH_CONFIG}/setopt.zsh"
    source "${ZSH_CONFIG}/aliases.zsh"
    source "${ZSH_CONFIG}/os-aliases.zsh"
    source "${ZSH_CONFIG}/completion.zsh"
    source "${ZSH_CONFIG}/functions.zsh"
    source "${ZSH_CONFIG}/env.zsh"
    source "${ZSH_CONFIG}/history.zsh"
    source "${ZSH_CONFIG}/plugins.zsh"
    source "${ZSH_CONFIG}/bindkeys.zsh"
}

####################################################
# User configuration sourced by interactive shells #
####################################################

os_check
# source fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source_config_files
eval $(thefuck --alias)
