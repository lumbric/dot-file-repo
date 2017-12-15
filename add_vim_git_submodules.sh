#!/bin/bash

# Add new VIM plugins as submodules 
# Run :PlugInstall in vim or neovim, then run this script and then git commit.

root_path=$(dirname $0)/neovim/plugged/

for submodule in $(find $root_path -mindepth 2 -type d -name .git); do
    submodule_dir=$submodule/..
    remote_name=$(cd $submodule_dir && git rev-parse --abbrev-ref --symbolic-full-name @{u}|cut -d'/' -f1 )
    remote_uri=$(cd $submodule_dir && git remote get-url $remote_name)

    echo "Adding $submodule with remote $remote_name..."

    # If already added to index, but not to .gitmodules...
    git rm --cached $submodule_dir &> /dev/null

    git submodule add $remote_uri $submodule_dir
done
