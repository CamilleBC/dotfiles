# Filename:      /.zshrc-local
# Purpose:       config file for grmlzsh (z shell)
# Authors:       Camille Baillat and (c) grml-team (grml.org)
# Bug-Reports:   see http://grml.org/bugs/
# License:       This file is licensed under the GPL v2 or any later version.
################################################################################
# Nowadays, grml's zsh setup lives in only *one* zshrc file.
# That is the global one: /etc/zsh/zshrc (from grml-etc-core).
# It is best to leave *this* file untouched and do personal changes to
# your zsh setup via ${HOME}/.zshrc.local which is loaded at the end of
# the global zshrc.
#
# That way, we enable people on other operating systems to use our
# setup, too, just by copying our global zshrc to their ${HOME}/.zshrc.
# Adjustments would still go to the .zshrc.local file.
################################################################################

setup_macos()
{
    # Load Homebrew Fix script
    source $HOME/.brewconfig.zsh
}


setup_linux()
{
    # Aliases
    alias pacinstall='trizen -Syu'

    # Add .local/bin to path
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

####################################################
# User configuration sourced by interactive shells #
####################################################

os_check

local ZSH_CONFIG="${HOME}/.config/zsh"
# source all the zsh config files
source "${ZSH_CONFIG}/aliases.zsh"
source "${ZSH_CONFIG}/plugins.zsh"
# source fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#################
# Shell options #
#################

# vi mode for zsh
setopt vi
## add `|' to output redirections in the history
setopt histallowclobber

## try to avoid the 'zsh: no matches found...'
setopt nonomatch

## alert me if something failed
setopt printexitvalue


##################
# ZSH completion #
##################
autoload -U compinit
compinit

