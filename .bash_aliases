# source from .bashrc or .zshrc or .profile file

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# copy large files through SSH
alias rsync_ssh="rsync -P --rsh=ssh"

# Configuration "dot" files - Git repo
alias config="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# Git
alias gitlog="git log --graph --oneline --decorate"

