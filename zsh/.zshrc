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

# for some reason this should be loaded before oh-my-zsh.sh
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

# Conda tab completion
fpath+=~/.dot-file-repo/zsh/conda-zsh-completion/
zstyle ':completion::complete:*' use-cache 1
zstyle ":conda_zsh_completion:*" use-groups true

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


# Fix color contrast
# https://github.com/dragonxlwang/misc/blob/master/dotfiles/lib/ls_colors.zsh
# See also: https://github.com/Microsoft/WSL/issues/930
LS_COLORS='no=00:fi=00:di=36:ln=35:pi=37;44:so=37;44:do=37;44:bd=37;44:cd=37;44:or=05;37;45:mi=05;37;45:tw=30;46:ow=30;46:ex=01;31:*.cmd=01;31:*.exe=01;31:*.com=01;31:*.bat=01;31:*.reg=01;31:*.app=01;31:*.txt=33:*.org=33:*.md=33:*.mkd=33:*.C=32:*.c=32:*.cc=32:*.csh=32:*.css=32:*.cxx=32:*.el=32:*.h=32:*.hs=32:*.htm=32:*.html=32:*.java=32:*.js=32:*.man=32:*.objc=32:*.php=32:*.pl=32:*.pm=32:*.pod=32:*.py=32:*.rb=32:*.rdf=32:*.sh=32:*.shtml=32:*.tex=32:*.vim=32:*.xml=32:*.zsh=32:*.bmp=01;35:*.cgm=01;35:*.dl=01;35:*.dvi=01;35:*.emf=01;35:*.eps=01;35:*.gif=01;35:*.jpeg=01;35:*.jpg=01;35:*.JPG=01;35:*.mng=01;35:*.pbm=01;35:*.pcx=01;35:*.pdf=01;35:*.pgm=01;35:*.png=01;35:*.ppm=01;35:*.pps=01;35:*.ppsx=01;35:*.ps=01;35:*.svg=01;35:*.svgz=01;35:*.tga=01;35:*.tif=01;35:*.tiff=01;35:*.xbm=01;35:*.xcf=01;35:*.xpm=01;35:*.xwd=01;35:*.xwd=01;35:*.yuv=01;35:*.aac=01;35:*.au=01;35:*.flac=01;35:*.mid=01;35:*.midi=01;35:*.mka=01;35:*.mp3=01;35:*.mpa=01;35:*.mpeg=01;35:*.mpg=01;35:*.ogg=01;35:*.ra=01;35:*.wav=01;35:*.anx=01;35:*.asf=01;35:*.avi=01;35:*.axv=01;35:*.flc=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.m2v=01;35:*.m4v=01;35:*.mkv=01;35:*.mov=01;35:*.mp4=01;35:*.mp4v=01;35:*.mpeg=01;35:*.mpg=01;35:*.nuv=01;35:*.ogm=01;35:*.ogv=01;35:*.ogx=01;35:*.qt=01;35:*.rm=01;35:*.rmvb=01;35:*.swf=01;35:*.vob=01;35:*.wmv=01;35:*.doc=33:*.docx=33:*.rtf=33:*.dot=33:*.dotx=33:*.xls=33:*.xlsx=33:*.ppt=33:*.pptx=33:*.fla=33:*.psd=33:*.7z=1;35:*.apk=1;35:*.arj=1;35:*.bin=1;35:*.bz=1;35:*.bz2=1;35:*.cab=1;35:*.deb=1;35:*.dmg=1;35:*.gem=1;35:*.gz=1;35:*.iso=1;35:*.jar=1;35:*.msi=1;35:*.rar=1;35:*.rpm=1;35:*.tar=1;35:*.tbz=1;35:*.tbz2=1;35:*.tgz=1;35:*.tx=1;35:*.war=1;35:*.xpi=1;35:*.xz=1;35:*.z=1;35:*.Z=1;35:*.zip=1;35:*.ANSI-black=30:*.ANSI-black-bright=01;30:*.ANSI-red=31:*.ANSI-red-bright=01;31:*.ANSI-green=32:*.ANSI-green-bright=01;32:*.ANSI-yellow=33:*.ANSI-yellow-bright=01;33:*.ANSI-blue=34:*.ANSI-blue-bright=01;34:*.ANSI-magenta=35:*.ANSI-magenta-bright=01;35:*.ANSI-cyan=36:*.ANSI-cyan-bright=01;36:*.ANSI-white=37:*.ANSI-white-bright=01;37:*#=32:*~=32:*.log=32:*,v=01;30:*.BAK=01;30:*.DIST=01;30:*.OFF=01;30:*.OLD=01;30:*.ORIG=01;30:*.bak=01;30:*.dist=01;30:*.off=01;30:*.old=01;30:*.org_archive=01;30:*.orig=01;30:*.swo=01;30:*.swp=01;30:';
export LS_COLORS
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"



export PYTHONBREAKPOINT='ipdb.set_trace'
