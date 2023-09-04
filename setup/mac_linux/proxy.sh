#!/bin/bash

export_proxy() {
    local port=${1:-7890}
    local http_proxy="http://127.0.0.1:${port}"
    local https_proxy="https://127.0.0.1:${port}"
    local all_proxy="socks5://127.0.0.1:${port}"
	echo "export http_proxy=$http_proxy"
	echo "export https_proxy=$http_proxy"
	echo "export all_proxy=$http_proxy"
    export http_proxy=$http_proxy
    export https_proxy=$https_proxy
    export all_proxy=$all_proxy
}

remove_proxy() {
    unset http_proxy
    unset https_proxy
    unset all_proxy
}

if [[ $1 == "open" ]]; then
    if [[ -n $2 ]]; then
        export_proxy $2
    else
        export_proxy
    fi
    echo "Proxy enabled"
elif [[ $1 == "close" ]]; then
    remove_proxy
    echo "Proxy disabled"
else
    echo "Invalid option. Usage: ./proxy.sh [open/close] [port]"
fi

