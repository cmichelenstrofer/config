
# run the non-login "run commands" file
if [ -n "$BASH_VERSION" ]; then
    if [ -f ~/.bashrc ]; then
	    source ~/.bashrc
    fi
elif [ -n "$ZSH_VERSION"]; then
    if [ -f ~/.zshrc ]; then
	    source ~/.zshrc
    fi
fi

