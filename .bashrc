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

# Aliases
alias ll='ls -lha'
alias ...='cd ../..'

# Git Aliases
git config --global alias.see "log --oneline --decorate --graph --all --simplify-by-decoration"
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.smash "commit -am"
git config --global alias.st status
git config --global alias.last 'log -1 HEAD'
git config --global alias.tagsbydate "for-each-ref --sort=taggerdate --format '%(refname) %(taggerdate)' refs/tags"
git config --global alias.sshow "!f() { git stash show stash^{/$*} -p; }; f"
git config --global alias.sapply "!f() { git stash apply stash^{/$*}; }; f"

# Git color
git config --global color.ui auto

# Git Settings
git config --global rerere.enabled true
git config --global pull.rebase true

this_dir="${BASH_SOURCE%/*}"

if [ -f $this_dir/.git-completion.bash ]; then
  . $this_dir/.git-completion.bash
fi

# Load in the git branch prompt script.
source $this_dir/.git-prompt.sh

# Command prompt improvements
export PS1="\t \u \w\[\033[m\]\[$Cyan\]\$(__git_ps1)\[$White\]\$ "
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'

# Make emacs the default editor
VISUAL=emacs; export VISUAL
EDITOR=emacs; export EDITOR
