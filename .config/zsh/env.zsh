function setup_macos() {
    # ==== add brew ruby to path
    export PATH="/Users/cbaillat/.brew/opt/ruby/bin:$PATH"
}

function setup_os() {
    local system_type=$(uname -s)
    case $system_type in
        Darwin)
            setup_macos
            ;;
        Linux)
            setup_archlinux
            ;;
        *)
            echo "Could not setup specific OS env variables: not a valid OS."
            ;;
    esac
}

# set specific OS variables
setup_os

# global variables
export ZSH_CONFIG="${HOME}/.config/zsh"
#export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*" --glob "!./Library/*"'
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

# allow ls to use colours
export CLICOLOR=1

# ==== configure default applications
export PAGER='less'
export EDITOR='nvim'

# ==== set options for less
export LESS='--quit-if-one-screen --ignore-case --status-column --LONG-PROMPT --RAW-CONTROL-CHARS --HILITE-UNREAD --tabs=4 --no-init --window=-4'
# --quit-if-one-screen or -F: Exit if the entire file can be displayed in one screen. This is usually desirable as there is no incentive to stay in less if a single screen can display all the contents.
# --ignore-case or -i: Cause search in less to ignore case unless an uppercase letter is present in the search pattern.
# --status-column or -J: Display a status column on the left to indicate lines that match current search or indicate the first unread line after moving a full page.
# --LONG-PROMPT or -M: Prompt more verbosely.
# --RAW-CONTROL-CHARS or -R: Cause ANSI “color” escape sequences to be displayed in their raw form. This is for the color display explained later in the next section.
# --HILITE-UNREAD or -W: Highlight the first unread line after scrolling the screen for more than one lines.
# --tabs=4 or -x4: Display a tab as 4-character width, since most modern text files assume 4-character width for a tab. However, you can still change this to your preference if, for example, you frequently read Linux kernel source code which uses 8-character width for a tab.
# --no-init or -X: Disable sending the termcap initialization and deinitialization strings to the terminal. The purpose here is to prevent clearing screen after exiting. If you do not want this feature and want to remove it, please keep in mind that --quit-if-one-screen also relies on this option to work properly. For a workaround, please check out here.
# --window=-4 or -z-4: Change the default scrolling size to 4 lines fewer than the current screen size, so always keep 4 lines overlapping with previous screen when scrolling with the space key.
# ==== set colors for less. Borrowed from https://wiki.archlinux.org/index.php/Color_output_in_console#less .
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline


