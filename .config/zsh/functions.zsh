functions_setup() {
    local fdirectory="${ZSH_CONFIG}/functions"
    # append directory to the front of the search path
    fpath=($fdirectory  "${fpath[@]}" )

    # **: matches multiple directories recursively. So a/**/b matches any b somewhere below a.
    # (.): is a glob qualifier and tells zsh to only match plain files.
    for function in $fdirectory/**/*(.); do
        autoload -Uz $function
    done
}

# by using a function we keep our variables local instead of polluting the env
functions_setup
