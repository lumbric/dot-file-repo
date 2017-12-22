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
#   git clone --recursive https://github.com/lumbric/dot-file-repo.git .dot-file-repo
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
#       - org mode equivalent for lists?
#       - easily change lang or disable spell? (remember for files?)
#       - profile startup time
#       - autoreload
#       - interesting plugin? https://github.com/tpope/vim-unimpaired
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
#       - plugins for last dirs or often used dirs?
#       - iso date, not only time
#       - change color of promt on ssh host
#       - keybindings for all terminals
#       - make it faster, no seraching for unknown commands
#       - shortcats, aliases, i.e. grep etc
#       - make a nicer theme
#       - remove the FAIL, only red indication of prompt
#       - disable substition of dir in prompt
#  - install file
#       - changes in install files should automatically deploy to other machines (no need for later mkdir etc)
#  - tmux
#  - screen
#  - roxterm
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

SYMLINKS['.oh-my-zsh']="${REPOPATH}/zsh/oh-my-zsh"
SYMLINKS['.oh-my-zsh']="${REPOPATH}/zsh/oh-my-zsh"

SYMLINKS[".dot-file-repo/zsh/oh-my-zsh/custom/themes/powerlevel9k"]="${REPOPATH}/zsh/powerlevel9k"
SYMLINKS['.local/share/fonts/DroidSansMonoNerdFont.otf']="${REPOPATH}/zsh/DroidSansMonoNerdFont.otf"
SYMLINKS['.config/fontconfig/conf.d/10-nerdfont-symbols.conf']="${REPOPATH}/zsh/10-nerdfont-symbols.conf"

SYMLINKS['.config/nvim/init.vim']="${REPOPATH}/neovim/init.vim"
SYMLINKS['.local/share/nvim/site/autoload/plug.vim']="${REPOPATH}/neovim/vim-plug/plug.vim"
SYMLINKS['.local/share/nvim/plugged']="${REPOPATH}/neovim/plugged"


# VIM fallback...
SYMLINKS['.vim']="${HOME}/.local/share/nvim/site"
SYMLINKS['.vimrc']="${REPOPATH}/neovim/init.vim"

###################   END config  ###################

# Necessary if no neovim installed for VIM fallback..
mkdir -p ~/.local/share/nvim/site

echo Updating repo and submodules...
cd $(dirname $0)
#git submodule update --init --recursive


# Create symlinks...
echo 
echo Creating/updating symlinks...
for link_name in "${!SYMLINKS[@]}"; do
    # backup existing if exists and not symlink...
    if [ -h ~/$link_name ]; then
        echo Removing already existing symlink \"$link_name\"...
        rm ~/$link_name
    elif [ -f ~/$link_name -o -d ~/$link_name ]; then
        echo File \"$link_name\" already existing, moving to backup dir $REPOPATH/backup
        mkdir -p $REPOPATH/backup
        mkdir -p $(dirname $REPOPATH/backup/$link_name)
        mv -i ~/$link_name $REPOPATH/backup/$link_name.$(date -u +"%Y-%m-%dT%H-%M-%SZ")
    fi
    target=${SYMLINKS[$link_name]}

    echo Creating symlink ~/$link_name '-->' $target...
    mkdir -p $(dirname ~/$link_name)
    ln -s $target ~/$link_name
done
