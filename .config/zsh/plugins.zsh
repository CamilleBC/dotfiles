#####################
# Plugin management #
#####################

# ===== load zgen
source "${HOME}/.zgen/zgen.zsh"

# ===== load plugins
zgen load zsh-users/zaw
zgen load zsh-users/zsh-autosuggestions
zgen load zsh-users/zsh-completions
zgen load romkatv/powerlevel10k powerlevel10k
## LAST: zsh-syntax-highlighting should be the last plugin loaded
zgen load zsh-users/zsh-syntax-highlighting
zgen load zsh-users/zsh-history-substring-search


###################
# Plugin settings #
###################

# ===== zsh-autosuggestions
## set colour to see highlights in solarized terminal
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=23'
## use async mode for autosuggestions and avoid freezing
ZSH_AUTOSUGGEST_USE_ASYNC=1
## disable suggestion for large buffers
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
