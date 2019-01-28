#
# User configuration sourced by interactive shells
#

# Define zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

###################
# Local functions #
###################

setup_macos()
{
	# Load Homebrew Fix script
	source $HOME/.brewconfig.zsh
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

# add .local/bin to path
path+=('/home/camille/.local/bin')
export PATH

# Define zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Adding custom completions and function
fpath=("$HOME/.zsh_custom/completions" $fpath)
fpath=("$HOME/.zsh_custom/functions" $fpath)
autoload -Uz mp
autoload -Uz compinit
compinit

# Define PowerLevel9k theme location
POWERLEVEL9K_INSTALLATION_PATH=~/.zim/modules/prompt/external-themes/powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_MODE='nerdfont-complete'

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

