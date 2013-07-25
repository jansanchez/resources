alias  gam='git commit -am'
alias  grm='git rm'
alias  gmv='git mv'
alias  grr='git reset --hard HEAD'
alias goop="git commit --amend -C HEAD -n"
alias  gls='git log --pretty=format:"%C(reset)%h %C(yellow)%ad%C(yellow)%d %C(reset)%s%C(green) [%cn]" --decorate --date=short'
alias   ga='git add'
alias   gp='git push'
alias   gl='git log --name-status'
alias   gs='git status'
alias   gf='git fetch -p'
alias   gm='git commit -m'
alias   gb='git branch'
alias   gc='git checkout'
alias  gff="git fetch -p && git rebase origin/\$(just_git_branch)"