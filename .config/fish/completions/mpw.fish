set sites (jq '.sites | keys' ~/.mpw.d/Camille\ Baillat.mpsites.json | rg \" | sed 's/"//g' | sed 's/,$//')
complete -c mpw -a "$sites"
