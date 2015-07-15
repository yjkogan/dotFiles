# Colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
# Reset
Color_Off='\e[0m'       # Text Reset

# Regular Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Load in the git branch prompt script.
source ~/.git-prompt.sh

# Command prompt improvements
export PS1="\t \u \w\[\033[m\]\[$Cyan\]\$(__git_ps1)\[$White\]\$ "
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'

# Aliases
alias ll='ls -lha'
alias ...='cd ../..'

# Git Aliases
git config --global alias.see "log --oneline --decorate --graph --all --simplify-by-decoration"
git config --global alias.prune "fetch --prune"
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.last 'log -1 HEAD'

# Git color
git config --global color.ui auto

# Git Autocomplete
if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
  . /usr/local/git/contrib/completion/git-completion.bash
fi

# Git Settings
git config --global rerere.enabled true

# Make emacs the default editor
VISUAL=emacs; export VISUAL
EDITOR=emacs; export EDITOR

# Custom functions
# Checks out and pulls a branch and then switches back to your current branch
git_update_branch() {
    if [ $1 ]
    then
	PREV_BRANCH=`git rev-parse --abbrev-ref HEAD`
	SAVED=`git stash`
	git checkout $1
	git pull origin/$1
	git checkout $PREV_BRANCH
	if [[ $SAVED != "No local changes to save" ]]
	then
	    git stash pop
	fi
    else
	echo 'Usage: git_update_branch BRANCH_NAME'
    fi
}
