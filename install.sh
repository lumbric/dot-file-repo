#!/bin/bash
#
# ,--.                     ,--.            ,--.        ,--
# |  | ,--.,--. ,--,--,--. |  |-.  ,--.--. `--'  ,---. |  |  ,---.
# |  | |  ||  | |        | | .-. ' |  .--' ,--. | .--' `-'  (  .-'
# |  | '  ''  ' |  |  |  | | `-' | |  |    |  | \ `--.      .-'  `)
# `--'  `----'  `--`--`--'  `---'  `--'    `--'  `---'      `----'
#                                                           ,--.
#  ,---.   ,---.  ,--.--.  ,---.   ,---.  ,--,--,   ,--,--. |  |
# | .-. | | .-. : |  .--' (  .-'  | .-. | |      \ ' ,-.  | |  |
# | '-' ' \   --. |  |    .-'  `) ' '-' ' |  ||  | \ '-'  | |  |
# |  |-'   `----' `--'    `----'   `---'  `--''--'  `--`--' `--'
# `--'
#    ,--.           ,--.    ,---. ,--. ,--.
#  ,-|  |  ,---.  ,-'  '-. /  .-' `--' |  |  ,---.  ,--.--.  ,---.   ,---.   ,---.
# ' .-. | | .-. | '-.  .-' |  `-, ,--. |  | | .-. : |  .--' | .-. : | .-. | | .-. |
# \ `-' | ' '-' '   |  |   |  .-' |  | |  | \   --. |  |    \   --. | '-' ' ' '-' '
#  `---'   `---'    `--'   `--'   `--' `--'  `----' `--'     `----' |  |-'   `---'
#                                                                   `--'
#
# How to install:
#   git clone --recursive http://git.suuf.cc/dot-file-repo.git .dot-file-repo
#   bash
#   ./.dot-file-repo/install.sh
#   
# Then open vim and run :PlugInstall or :PlugUpdate.
#
# You can run this script later at any time to update symlinks or config
# changes. Old symlinks will not be removed, you have to clean up manually (or
# ignore them).
#
# Dependencies:
#   zsh, bash, git, vim, neovim
#
# Recommended:
#   ack-grep and on Ubuntu:  sudo ln -s /usr/bin/ack-grep /usr/bin/ack
#
# TODO:
#  - vim
#       - grep command? Ack suffices?
#           - https://github.com/mhinz/vim-grepper/wiki/example-configurations-and-mappings
#       - 72hars for git commit?
#       - org mode equivalent for lists?
#       - .vimbackup?
#       - where are plugins installed?
#       - submodules commited in dot-file-repo for pinning plugins?
#       - easily change lang or disable spell? (remember for files?)
#       - autoinstall plugins?
#       - autoreload
#       - display wrong white spaces
#       - jedi?
#       - python: syntax & pep8 checker
#       - c: syntax checker
#       - make command
#       - command for uploading to esp8266
#       - configure airline status bar
#       - GIT? display changed lines?
#  - git
#       - hook template folder (should be merged with default hooks)
#  - zsh
#       - keybindings for all terminals
#       - trailing slash
#       - make it faster, no seraching for unknown commands
#       - shortcats, aliases, i.e. grep etc
#       - make a nicer theme
#       - iso date, not only time
#       - remove the FAIL, only red indication of prompt
#       - disable substition of dir in prompt
#  - install file
#       - changes in install files should automatically deploy to other machines (no need for later mkdir etc)
#  - tmux
#  - screen
#  - awesome
#  - htop config?
#

declare -A SYMLINKS   # requires bash >= 4


################### BEGIN config ###################

# Store repo content int this folder
REPOPATH=~/.dot-file-repo

# generate symlinks in $HOME for these files
SYMLINKS['.gitconfig']="${REPOPATH}/git/.gitconfig"
SYMLINKS['.zshrc']="${REPOPATH}/zsh/.zshrc"
SYMLINKS['.config/nvim/init.vim']="${REPOPATH}/neovim/init.vim"
SYMLINKS['.oh-my-zsh']="${REPOPATH}/zsh/oh-my-zsh"
SYMLINKS['.local/share/nvim/site/autoload/plug.vim']="${REPOPATH}/neovim/vim-plug/plug.vim"

# VIM fallback...
SYMLINKS['.vim']="${HOME}/.local/share/nvim/site"
SYMLINKS['.vimrc']="${REPOPATH}/neovim/init.vim"

###################   END config  ###################

# Necessary if no neovim installed for VIM fallback..
mkdir -p ~/.local/share/nvim/site
mkdir -p ~/.local/share/nvim/backup

echo Updating repo and submodules...
cd $(dirname $0)
git submodule update --recursive


# Create symlinks...
echo 
echo Creating/updating symlinks...
for link_name in "${!SYMLINKS[@]}"; do
    # backup existing if exists and not symlink...
    if [ -f ~/$link_name -a ! -h ~/$link_name -o -d ~/$link_name ]; then
        echo File \"$link_name\" already existing, moving to backup dir $REPOPATH/backup
        mkdir -p $REPOPATH/backup
        mv ~/$link_name $REPOPATH/backup/$link_name.`date --iso`
    fi
    if [ -h ~/$link_name ]; then
        echo Removing already existing symlink \"$link_name\"...
        rm ~/$link_name
    fi
    target=${SYMLINKS[$link_name]}

    echo Creating symlink ~/$link_name '-->' $target...
    mkdir -p $(dirname ~/$link_name)
    ln -s $target ~/$link_name
done
