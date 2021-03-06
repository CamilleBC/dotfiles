#################
# Unix commands #
#################

# colorise output, add file type indicator, and put sizes in human readable format
alias la='ls -lhAGF'
alias ls='ls -GFh'
alias lss='ls -lhSAGF'
alias lst='ls -lhtAGF'

###############
# Directories #
###############
alias config='cd ~/.config'

##########
# Neovim #
##########
alias vi='nvim'

#######
# Git #
#######
alias g='git'

alias ga='git add'
alias gaa='git add .'
alias gau='git add -u .'

alias gb='git branch'
## list all branches with details, sorted by last modified.
alias gba="git for-each-ref --sort='-authordate' --format='%(refname)   $%(authordate:relative)    $%(authorname)    $%(objectname:short)' refs/heads refs/remotes | sed -e 's-refs/heads/--' | column -t -s$"

alias gc='git commit'
alias gcm='git commit -m'

alias gcl='git clone'

alias gco='git checkout'
alias gcb='git checkout -b'
alias gcp='git cherry-pick'

alias gd='diff'
alias gdc='diff --cached'
alias gdl='show -1 --stat'

alias gf='git fetch'

## compact log
alias glg='git log --pretty=format:"%C(yellow)%h \\ %ad%Cred%d%C(yellow) [%Cblue%cn%C(yellow)]%n%Creset%s" --decorate --date=short'
## compact log with filechange summary
alias gll='git log --pretty=format:"%C(yellow)%h \\ %ad%Cred%d%C(yellow) [%Cblue%cn%C(yellow)]%n%Creset%s" --decorate --date=short --numstat'
## compact log graph
alias glg='git log --pretty=format:"%C(yellow)%h \\ %ad%Cred%d%C(yellow) [%Cblue%cn%C(yellow)]%n%Creset%s%n" --decorate --date=short --graph'

alias gp='git push'
alias gpl='git pull'

alias gs='git status -s'

########
# YADM #
########

alias y='yadm'
alias ya='yadm add'
alias yaa='yadm add -u'
alias yc='yadm commit'
alias ycm='yadm commit -m'
alias yco='yadm checkout'
alias yf='yadm fetch'
alias yp='yadm push'
alias ypl='yadm pull'
alias ys='yadm status'
