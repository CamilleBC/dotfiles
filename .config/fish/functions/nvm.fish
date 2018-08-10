function nvm
    if count $argv > /dev/null
        bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
    else
        bass source ~/.nvm/nvm.sh --no-use ';' nvm use default --silent
    end
end
