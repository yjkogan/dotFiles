THIS_DIR="${funcsourcetrace[1]%/*}"
source "${THIS_DIR}/custom/aliases.zsh"

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
git config --global alias.praise blame

# Git Settings
git config --global rerere.enabled true
git config --global pull.rebase true
git config --global pager.branch false

# https://superuser.com/questions/480928/is-there-any-command-like-time-but-for-memory-usage
if [[ `uname` == Darwin ]]; then
    MAX_MEMORY_UNITS=KB
else
    MAX_MEMORY_UNITS=MB
fi

TIMEFMT='%J'$'\n'\
'%U user %S system %P cpu %*E total'$'\n'\
'avg shared (code):         %X KB'$'\n'\
'avg unshared (data/stack): %D KB'$'\n'\
'total (sum):               %K KB'$'\n'\
'max memory:                %M '$MAX_MEMORY_UNITS''$'\n'\
'page faults from disk:     %F'$'\n'\
'other page faults:         %R'
