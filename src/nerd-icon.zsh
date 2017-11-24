#!/usr/bin/env zsh

ZAW_NERD_ICON_LIST=`cat $0:A:h/list.txt`

function zaw-src-nerd-icon() {
    which uni2ascii 1>/dev/null || brew install uni2ascii
    echo $ZAW_NERD_ICON_LIST_FILE
    candidates=(`echo $ZAW_NERD_ICON_LIST | awk '{ print $2 }'`)
    cand_descriptions=(`echo $ZAW_NERD_ICON_LIST | ascii2uni -a U -q | awk '{ printf "%s%s\n", $2, $1 }'`)
    actions=('zaw-src-nerd-icon-copy-uni' 'zaw-src-nerd-icon-copy-ascii' 'zaw-callback-append-to-buffer' 'zaw-callback-replace-buffer')
    act_descriptions=('copy unicode' 'copy ascii' 'append to edit buffer' 'replace edit buffer')
}

function zaw-src-nerd-icon-copy-uni() {
    BUFFER="echo ${(j:; :)@} | tr -d '\n' | pbcopy"
    zle accept-line
}

function zaw-src-nerd-icon-copy-ascii() {
    BUFFER="echo ${(j:; :)@} | tr -d '\n' | uni2ascii -a U -q | pbcopy"
    zle accept-line
}

zaw-register-src -n nerd-icon zaw-src-nerd-icon