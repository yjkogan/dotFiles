alias git_list_gone="git branch -vv | grep 'origin/.*: gone]' | awk '{print \$1}'"
alias git_delete_gone="git_list_gone | xargs git branch -d"
alias git_force_delete_gone="git_list_gone | xargs git branch -D"
