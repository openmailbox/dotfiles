function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

triton_status() {
    local format=${1:- on triton [%s]}
    if test ${TRITON_PROFILE}; then
        printf -- "${format}" "${TRITON_PROFILE}"
    fi
}

docker_machine_status() {
    local format=${1:- on docker [%s]}
    if test ${DOCKER_MACHINE_NAME}; then
        local dstatus
        dstatus=$(docker-machine status ${DOCKER_MACHINE_NAME})
        case ${dstatus} in
            Running)
                dstatus=' R'
                ;;
            Stopping)
                dstatus=' R->S'
                ;;
            Starting)
                dstatus=' S->R'
                ;;
            Error|Timeout)
                dstatus=' E'
                ;;
            *)
                # Just consider everything elase as 'stopped'
                dstatus=' S'
                ;;
        esac
    printf -- "${format}" "${DOCKER_MACHINE_NAME}${dstatus}"
    fi
}


PROMPT='
%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}$(box_name)%{$reset_color%} in %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info)$(virtualenv_info)%(?,,%{${fg_bold[blue]}%}
[%?]%{$reset_color%} )%{$fg[green]%}$(docker_machine_status)$(triton_status)%{$reset_color%}
$ '

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

local return_status="%{$fg[red]%}%(?..⤬)%{$reset_color%}"
RPROMPT='${return_status}%{$reset_color%}'
