#!/usr/bin/env bash

name=catgirl

rm -rf "$name"

shopt -s dotglob nullglob globstar

for file in src/**; do
    tmp=${file/#src/$name}

    [[ -d $file ]] && {
        mkdir -p "$tmp"
        continue
    }

    [[ $file =~ .sh$ && -x $file ]] && {
        "$file" > "${tmp%.sh}"
        continue
    }

    [[ ! $file =~ main$ ]] &&
        cp "$file" "$tmp"
done
