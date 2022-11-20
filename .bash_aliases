# source from .bashrc or .zshrc file

## PATH ##
PATH="$HOME/bin:$PATH"  # my bin


## PROMPT ##
if [ -n "$BASH_VERSION" ]; then
    RESET="\[\017\]"
    NORMAL="\[\033[0m\]"
    GREEN="\[\033[01;32m\]"
    BLUE="\[\033[01;34m\]"
    PS1="${RESET}${GREEN}\u${NORMAL} ${BLUE}(\w)${NORMAL} ${GREEN}>${NORMAL} "
elif [ -n "$ZSH_VERSION" ]; then
    PROMPT="%F{cyan}%n > %f"
    RPROMPT="%F{green}(%~)%f"
fi


## ALIASES ##
# color
if [ -n "$BASH_VERSION" ]; then
    alias ls="ls --color=auto"                                                                   
elif [ -n "$ZSH_VERSION" ]; then
    alias ls="ls -G"
fi
alias diff="colordiff" 

# navigation
alias la="ls -A"                                                                             
alias ll="ls -lhtr"                                                                          
alias lla="ls -lhtrA"
alias c="clear"                                                                              
alias cl="c;ls"                                                                              
alias cla="c;la"                                                                             
alias cll="c;ll"                                                                             
alias clla="c;lla"                                                                           
alias p="pwd"                                                                                

# copy large files through SSH
alias rsync_ssh="rsync -P --rsh=ssh"

# Configuration "dot" files - Git repo
alias config="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# Bin executables - Git repo
alias bin='/usr/bin/git --git-dir=$HOME/.bin/ --work-tree=$HOME/bin'

# Git
alias gitlog="git log --decorate --graph --all"

# Python
alias venv="source .venv/bin/activate"
alias python="python3"
alias pip="pip3"

# Julia                                                                                      
alias juliap="julia --project"                                                               
#alias pluto="julia -e 'import Pluto;Pluto.run()'" # see script in ~/bin/

