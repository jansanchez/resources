alias  gam='git commit -am'
alias  grm='git rm'
alias  gmv='git mv'
alias  grr='git reset --hard HEAD'
alias goop="git commit --amend -C HEAD -n"
alias   ga='git add'
alias   gp='git pull'
alias  gpu='git push'
alias   gl='git log --name-status'
alias   gs='git status'
alias   gf='git fetch -p'
alias   gm='git commit -m'
alias   gb='git branch'
alias   gbr='git branch -r'
alias   gbb='git branch -b'
alias   gc='git checkout'

alias   gac = 'git add .; git commit -am'
alias   gpom = 'git pull origin master'
alias   gpuom = 'git push origin master'
alias   gpod = 'git pull origin development'
alias   gpuod = 'git push origin development'
alias   gpor = 'git pull origin releases'
alias   gpuor = 'git push origin releases'

alias   gcm = 'gc master'
alias   gcr = 'gc releases'
alias   gcd = 'gc development'
alias   gch = 'gc hotfix'
alias   gcp = 'gc pre'

alias   gmh = 'git merge hotfix'
alias   gmd = 'git merge development'
alias   gmr = 'git merge releases'
alias   gmm = 'git merge master'

alias  gff="git fetch -p && git rebase origin/\$(just_git_branch)"
alias  gls='git log --pretty=format:"%C(reset)%h %C(yellow)%ad%C(yellow)%d %C(reset)%s%C(green) [%cn]" --decorate --date=short'


