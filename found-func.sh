function found_cd() {
    if [ $# -eq 0 ]; then
        cd ~
    else
        tmpfile="/tmp/found-cd-$$"
        found -d -w $tmpfile $@

        if [ $? -eq 0 ]; then
            cd `cat $tmpfile`
            rm -f $tmpfile
        fi
    fi
}

alias fcd=found_cd

# vim:ft=sh
