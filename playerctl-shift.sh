#!/bin/bash


DEFAULT_ACTION="shift"


parse_args () {
    case "$1" in
        shift|unshift)
            ACTION="$1"
            ;;
        "")
            ACTION="${DEFAULT_ACTION}"
            ;;
        *)
            >&2 echo "The action \"$1\" is not supported."
            return 1
    esac
}


shift_player () {
    playerctl --all-players pause && \
    sleep 1 && \
    playerctld "${ACTION}" && \
    playerctl play
}


main () {
    parse_args "$@" && \
    shift_player
}

main "$@"
