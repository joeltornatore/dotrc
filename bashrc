export GOPATH=$HOME/go
export PATH=\
.:\
$HOME/bin:\
$HOME/bin/android-platform-tools:\
$HOME/bin/nvim/bin:\
/Library/Developer/CommandLineTools/usr/bin:\
/Users/joel/Library/Python/3.9/bin:\
/usr/local/bin:\
$GOPATH/bin:\
/usr/local/go/bin:\
/opt/local/bin:\
/usr/bin:\
/bin:\
/usr/sbin:\
/sbin

export SDKROOT=$(xcrun --sdk macosx --show-sdk-path)

eval "$($HOME/homebrew/bin/brew shellenv)"
if [ -n "$PS1" ]; then
    unset LANG
    export HISTSIZE=10000
    export CDPATH=".:~:~/d:~/stash"
    export EDITOR=vi
    export HISTSIZE=100000
    export HISTFILESIZE=1000000
    export HISTIGNORE="bg:fg:po:popd:ls:pwd:late:pg"
    export HISTCONTROL=ignoreboth
    shopt -s histappend
    export PROMPT_COMMAND="history -a"
    #export CLICOLOR=1
    export PAGER=less
    export LESS="-eMrci"
    set -o noclobber
    set -o physical
    set bell-style none
    [ -f ~/.bash-aliases ] && . ~/.bash-aliases
    [ -f ~/.bash-funcs ] && . ~/.bash-funcs
    for f in $(ls ~/.bash_completion.d); do
        echo sourcing ~/.bash_completion.d/$f
        . ~/.bash_completion.d/$f
    done

    #PS1="[\h:\W]\!$ "
    #PS1="[\033[1;31m\h\033[0m:\033[1;34m\W\033[0m]\!$ "
    titlebar='\[\e]1;\h: \w\a'
    blue='\e[1;34m'
    yellow='\e[1;33m'
    purple='\e[1;35m'
    cyan='\e[1;36m'
    green='\e[1;32m'
    gray='\e[0;37m'
    red='\e[1;31m'
    background='\e[0;47m'
    NC='\e[0m'
    export PS1="\[${red}\]\h:\[${blue}\]\W \[${NC}\]\!$ "
    #export PS1="\W:\!$ "
    alias pp1="PS1=\"$PS1\""
    alias p1='PS1="[\h:\W]\!$ "'

    export EDITOR=vi

    export VM_HOSTNAME=localhost
    export VM_ROOT=${HOME}/vm_localhost
fi

# virtual environment wrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
#source /usr/local/bin/virtualenvwrapper.sh

# Python
export PYTHONSTARTUP=~/.pystartup
#export PYTHONPATH=/Users/joel/Library/Python/3.8/lib/python/site-packages
