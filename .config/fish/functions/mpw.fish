function mpw --description 'wrapper around masterpassword-cli'
    set name 'Camille Baillat'
    # pw type x = maximum
    set type x
    # purpose i = identification
    set purpose i
    set format json

    if count $argv > /dev/null
        /usr/bin/mpw -u $name -t $type -f $format $argv | xclip -sel clip
    else
        /usr/bin/mpw -u $name -t $type -f $format | xclip -sel clip
    end
end
