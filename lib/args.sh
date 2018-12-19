#!/bin/bash
#
# Args
# Simple way for get arguments in your bash script
# https://github.com/joubertredrat/bash-args

get_param_value() {
    arg=$1
    while [[ $# > 0 ]] ; do
    case "$1" in
        -$arg|--$arg)
            echo ${2}
            shift
            break
            ;;
        -$arg=*|--$arg=*)
            echo ${1#*=}
            shift
            break
            ;;
    esac
    shift
    done
}