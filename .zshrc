export ZSH="$HOME/.oh-my-zsh"

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls="ls --color=auto"
	alias dir='dir --color=auto'
	alias vdir='vdir --color=auto'
	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&>'

ZSH_THEME="agnoster"
HYPHEN_INSENSITIVE="true"
zstyle ':omz:update' mode auto 
DISABLE_UNTRACKED_FILES_DIRTY="true"
CASE_SENSITIVE="false"


plugins=(git)


export NVM_LAZY_LOAD=true

export LANG=en_US.UTF-8
export EDITOR="nano"
export GREP_COLORS='ms=01;36:mc=01;31:sl=:cx=:fn=35:ln=32:bn=32:se=36'
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'


source $ZSH/oh-my-zsh.sh
source /home/notyasho/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/notyasho/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# ls aliases
alias ls="/opt/coreutils/bin/ls"
alias lll='ls -CF'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -1'

# command aliases
alias cmatrix="unimatrix -c magenta -s=96 -f"
alias clock="tty-clock -c -C 5 -t"
alias spice="spicetify"
alias panes="colorpanes"
alias cls="clear"

# python aliases
alias python="python3"
alias py="python3"
alias pip="pip3"

# other aliases
alias backup="~/backup/dotfiles/backup.sh"
alias backuplog="tail ~/backup/dotfiles/.log | ccze -A"
alias pacman="sudo pacman"
alias zshrc="$EDITOR ~/.zshrc"
alias rm="rm -i"

# git aliases
alias g="git"
alias gs="git status"
alias gcl="git clone"

# PYENV
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# ENVIRONMENT VARIABLES
export PATH="$PATH:$HOME/bin/:/usr/lib/jvm/java-17-openjdk/bin:$HOME/.local/share/gem/ruby/3.0.0/bin:$HOME/.spicetify:/usr/local/opt/tcl-tk/bin"
export HISTCONTROL=ignoreboth:erasedups

if [[ "$TERM_PROGRAM" == "vscode" ]]; then
	alias ls="ls --color=auto"
fi