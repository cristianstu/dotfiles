alias b="bundle exec"

alias br='bundle exec rails'
alias zbr='zeus rails'

alias st='git status'
alias c="git commit -m $1"
alias ca="git commit --amend --no-verify"
alias ga="git add -p"
alias gp='git pull --rebase'
alias gpp='gp && git prune-all && git cleanup'
alias gd='git diff'
alias gdw='git diff --word-diff'
alias gt='gitk --all'
alias tg='tig --all'

alias bm='b rake db:migrate db:test:prepare'
alias bmm='b rake db:migrate && b rails db:migrate RAILS_ENV=test'
alias zbm='zeus rake db:migrate db:test:prepare'
alias gg='git grep -n --color'
#alias gl='git log --graph --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset"'
alias gl='git log --oneline --decorate --all --graph'
#alias ppr='git promote && hub pull-request'
alias ppr='gh pr create'

ysess='ysess -i'
