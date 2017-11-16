export CLICOLOR=1
export export LSCOLORS=gxfxcxdxbxegedabagacad
HISTSIZE=1000000
HISTFILESIZE=2000000

function git_branch {
  branch="`git branch 2>/dev/null | grep "^\*" | sed -e "s/^\*\ //"`"
  if [ "${branch}" != "" ];then
      if [ "${branch}" = "(no branch)" ];then
          branch="(`git rev-parse --short HEAD`...)"
      fi
      echo " ($branch)"
  fi
}

export PS1='\[\e]2;\u@\h\a\]\[\e[01;36m\]\u\[\e[01;35m\]@\[\e[01;32m\]\h\[\e[00m\]:\[\e[01;34m\]\w\[\033[01;32m\]$(git_branch)\[\033[00m\]\[\e[01;34m\]\$\[\e[00m\] '
export TERM=xterm-color
alias cl="cd /Users/along/work/cl"
alias shuimu="luit -encoding gbk telnet newsmth.net"
alias note="vim /Users/along/notes.sql"

alias to_tools="cd /Users/along/work/cl/hope_shared/hope_tools"
alias to_proto="cd /Users/along/work/cl/hope_shared/hope_protobuf/common"
alias to_hope="cd ~/work/cl/src/hope"
alias to_freetk="cd ~/work/cl/src/freetk"

alias tail_entry_log="tail -F ~/work/cl/logs/hope_entry.log"
alias tail_user_info_log="tail -F ~/work/cl/logs/hope_user_info.log"
alias tail_user_location_log="tail -F ~/work/cl/logs/hope_user_location.log"
alias tail_scheduler_log="tail -F ~/work/cl/logs/hope_scheduler.log"

alias restart_hopo_entry="supervisorctl restart hope_entry"
alias restart_hopo_user_info="supervisorctl restart hope_user_info"
alias restart_hopo_user_location="supervisorctl restart hope_user_location"

alias to_test="ssh cltx@192.168.8.30"
alias to_test_redis="redis-cli -h 192.168.8.30 -p 6379"
alias to_test_mysql="mysql -h192.168.8.30 -uhope -phope123456"

export PATH="/Users/along/work/cl/bin:/Users/along/bin:/usr/local/mysql/bin:/usr/local/opt/git/bin:/Users/along/work/redis/src:/usr/local/opt/curl/bin:/Users/along/work/go/bin:/usr/local/go/bin:$PATH"
export GOROOT="/usr/local/go"
export GOPATH="/Users/along/work/cl"
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
