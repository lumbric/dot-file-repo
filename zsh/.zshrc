export TERM="xterm-256color"

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# Note: needs to be loaded before oh-my-zsh.sh!
ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="tjkirch"
# Other interesting themes:    - PR 2013-12-21
#
#    tjkirch
#    dst                
#    rkj-repos          
#    smt                
#    tjkirch            
#    tonotdo            
#    bira               
#    gnzh               
#    re5et              
#    xiong-chiamiov     


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
#COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git sudo jump pip colored-man)
# wanna have more? used at IMS in the past
#plugins=(git svn systemd sudo jump pip colored-man common-aliases dircycle dirhistory)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/home/peter/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"


if which nvim > /dev/null; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi


# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Make prompt faster (slow because of GIT status in some large repos)
# http://marc-abramowitz.com/archives/2012/04/10/fix-for-oh-my-zsh-git-svn-prompt-slowness/
function git_prompt_info() {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
}


# create a zkbd compatible hash;
# to add other keys to this hash, see: man 5 terminfo
# from http://zshwiki.org/home/zle/bindkeys
typeset -A key
key[Home]=${terminfo[khome]}
key[End]=${terminfo[kend]}
key[Insert]=${terminfo[kich1]}
key[Delete]=${terminfo[kdch1]}
key[Up]=${terminfo[kcuu1]}
key[Down]=${terminfo[kcud1]}
key[Left]=${terminfo[kcub1]}
key[Right]=${terminfo[kcuf1]}
key[PageUp]=${terminfo[kpp]}
key[PageDown]=${terminfo[knp]}


up-line-or-local-history() {
    zle set-local-history 1
    zle up-line-or-history
    zle set-local-history 0
}
zle -N up-line-or-local-history
down-line-or-local-history() {
    zle set-local-history 1
    zle down-line-or-history
    zle set-local-history 0
}
zle -N down-line-or-local-history

# http://superuser.com/a/691603/110122
bindkey "${key[Up]}" up-line-or-local-history
bindkey "${key[Down]}" down-line-or-local-history

bindkey "^[[1;5A" up-line-or-history    # [CTRL] + Cursor up
bindkey "^[[1;5B" down-line-or-history  # [CTRL] + Cursor down


if [[ -n "$KONSOLE_PROFILE_NAME" ]]; then
    # uargh! zsh! different keys on different terminal emulators...
    # this is an ugly workoaroud for KDEs konsole
    bindkey "^[[A" up-line-or-local-history
    bindkey "^[[B" down-line-or-local-history

    bindkey "^^[[5A" up-line-or-history    # [CTRL] + Cursor up
    bindkey "^^[[5B" down-line-or-history  # [CTRL] + Cursor down
fi


# Store a looot of histroy - PR 2013-12-21
# 50 000 = 5MB per shell instance?
HISTSIZE=50000
SAVEHIST=50000
setopt hist_ignore_all_dups

# Enable comments on shell
setopt interactivecomments

# allow to skip ~  when cd ~my_static_dir
setopt CDABLE_VARS

# enable zmv - move multiple files at once
autoload -U zmv

source ~/.dot-file-repo/zsh/ssh_color.zsh

source ~/.dot-file-repo/zsh/.aliases
if [ -e "${HOME}/.dot-file-repo/zsh/.zsh_aliases.local" ]; then
    source ~/.dot-file-repo/zsh/.zsh_aliases.local
fi

# for some reason this should be loaded after oh-my-zsh.sh
source ~/.dot-file-repo/zsh/powerlevel9k_settings.sh

# Fall back mode for powerlevel9k when SSH-ing to server with dot-file-repo and
# powerlevel9k installed, but dot-file-repo and fonts not available on client.
if [ -z $SSH_CLIENT ]; then
    # this env variable will be available only if this .zshrc is used on client
    export LC_CLIENT_HAS_DOT_FILE_REPO=1
fi
if [ -z $LC_CLIENT_HAS_DOT_FILE_REPO ]; then
    source ~/.dot-file-repo/zsh/powerlevel9k_settings_no_font_fallback.sh
fi


# zsh-syntax-highlighting
# From here, maybe interesting:
# https://github.com/bhilburn/powerlevel9k/wiki/Show-Off-Your-Config#tony-lambiris-configuration
#ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
#ZSH_HIGHLIGHT_PATTERNS+=("rm -rf *" "fg=white,bold,bg=red")
#typeset -A ZSH_HIGHLIGHT_STYLES
#ZSH_HIGHLIGHT_STYLES[path]="fg=white"
#ZSH_HIGHLIGHT_STYLES[path_pathseparator]="fg=grey"
#ZSH_HIGHLIGHT_STYLES[alias]="fg=cyan"
#ZSH_HIGHLIGHT_STYLES[builtin]="fg=cyan"
#ZSH_HIGHLIGHT_STYLES[function]="fg=cyan"
#ZSH_HIGHLIGHT_STYLES[command]="fg=green"
#ZSH_HIGHLIGHT_STYLES[precommand]="fg=green"
#ZSH_HIGHLIGHT_STYLES[hashed-command]="fg=green"
#ZSH_HIGHLIGHT_STYLES[commandseparator]="fg=yellow"
#ZSH_HIGHLIGHT_STYLES[redirection]="fg=magenta"
#ZSH_HIGHLIGHT_STYLES[bracket-level-1]="fg=cyan,bold"
#ZSH_HIGHLIGHT_STYLES[bracket-level-2]="fg=green,bold"
#ZSH_HIGHLIGHT_STYLES[bracket-level-3]="fg=magenta,bold"
#ZSH_HIGHLIGHT_STYLES[bracket-level-4]="fg=yellow,bold"
