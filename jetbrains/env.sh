#!/bin/zsh

for client in $HOME/jetbrains/*; do
    if [ -d $client ]; then
        export PATH="$client/bin:$PATH"
    fi
done

