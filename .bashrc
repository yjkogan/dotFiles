# Colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Command prompt improvements
export PS1="\D{%H:%M:%S} [\u@localhost \w]\$ "
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'

# Aliases
alias ll='ls -lha'
alias ...='cd ../..'
alias git=hub

# Git Aliases
git config --global alias.see "log --oneline --decorate --graph --all --simplify-by-decoration"

# Git Autocomplete
if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
  . /usr/local/git/contrib/completion/git-completion.bash
fi

# Make emacs the default editor
VISUAL=emacs; export VISUAL
EDITOR=emacs; export EDITOR

# Custom functions
## Checks out and pulls a branch and then switches back to your current branch
git_update_branch() {
    if [ $1 ]
    then
	PREV_BRANCH=`git rev-parse --abbrev-ref HEAD`
	SAVED=`git stash`
	git checkout $1
	git pull origin $1
	git checkout $PREV_BRANCH
	if [[ $SAVED != "No local changes to save" ]]
	then
	    git stash pop
	fi
    else
	echo 'Usage: git_update_branch BRANCH_NAME'
    fi
}
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
