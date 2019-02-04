bindkey '^R'    zaw-history                         # ctrl+R
bindkey "^B"    history-incremental-search-backward # ctrl-B
#bindkey '^ '    autosuggest-accept                  # ctrl+space
bindkey '^ '    forward-word                          # ctrl+space
bindkey "^[[B"    history-substring-search-down     # down arrow
bindkey "^[[A"    history-substring-search-up       # up arrow
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
