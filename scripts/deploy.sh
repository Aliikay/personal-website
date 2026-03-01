#!/bin/sh

function askYesNo {
        QUESTION=$1
        DEFAULT=$2
        if [ "$DEFAULT" = true ]; then
                OPTIONS="[Y/n]"
                DEFAULT="y"
            else
                OPTIONS="[y/N]"
                DEFAULT="n"
        fi
        read -p "$QUESTION $OPTIONS " -n 1 -s -r INPUT
        INPUT=${INPUT:-${DEFAULT}}
        echo ${INPUT}
        if [[ "$INPUT" =~ ^[yY]$ ]]; then
            ANSWER=true
        else
            ANSWER=false
        fi
}

if [[ -n "$(git status -s)" ]]; then
    git status
    askYesNo "There are unstaged git changes, you may have forgot to commit the changes. Deploy anyway?" true
    if [ "$ANSWER" = true ] ; then
        echo "Deploying despite uncomitted changes..."
    else
        exit 1
    fi
fi

gh workflow run deploy.yml --ref main
gh run list --workflow="deploy.yml"
