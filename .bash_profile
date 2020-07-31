if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

 parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
 
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
 
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$(parse_git_branch) \[\033[00m\]$\[\033[00m\] "
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PATH="/usr/local/opt/python@3.8/bin:$PATH"
alias adog="git log --all --decorate --oneline --graph"
alias addog='/site/apps/git/bin/git log --all --decorate --oneline --graph --pretty=format:"%C(yellow)%h%Creset%C(cyan)%C(bold)%d%Creset %C(cyan)%cd%Creset %s" --date=format:"%y-%m%d-%H%M"'
alias ga="git add"
alias gb="git branch"
alias gc="git commit"
alias gco="git checkout"
alias gcom="git checkout master"
alias gd="git diff"
alias gl="git config -l"
alias grso="git remote show origin"
alias gs="git status"
alias dcm="bundle exec rails db:drop db:create db:migrate"
alias s="bundle exec rails db:seed"
alias be="bundle exec"
alias migrate="bundle exec rails db:migrate"
alias drop="bundle exec rails db:drop"
alias create="bundle exec rails db:create"
alias gpo="git push origin"
export PATH="/usr/local/opt/python@3.8/bin:$PATH"
