### Standard stuff ###
if [[ $- != *i* ]] ; then
	# Shell is non-interactive, return now.
	return
fi

export HISTFILESIZE=20000

export TERM=xterm-256color

source ~/dotfiles/git/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1="\[[33m\]\A \[[32m\]\u@\h \[[34m\]\w\$(__git_ps1) \$ \[[0m\]"
export PATH=$PATH:~/Scripts

### Aliases and function helpers ###

# BASH Helpers
alias ls='ls -G'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias countfiles='for t in files links directories; do echo `find . -type ${t:0:1} | wc -l` $t; done 2> /dev/null'
hash_folder() { find $1 -type f -exec md5sum {} \; | cut -d " " -f 1 | sort| md5sum; }

# Pretty print code
alias enscript_c='enscript -q -B -C -Ec -G --color --word-wrap -f Courier9 -MLetter -p - $@'
alias enscript_python='enscript -q -B -C -Epython -G --color --word-wrap -f Courier9 -MLetter -p - $@'

# useful tools
alias servedir='python -m SimpleHTTPServer'

# open command in new tab in iTerm
tab() {
        osascript -e "
        tell application \"iTerm\"
         tell the first terminal
          set currentSession to current session
          launch session \"Default Session\"
          tell the last session
           write text \"cd $(pwd)\"
           write text \"$*\"
          end tell
          select currentSession
         end tell
        end tell"
}

# tmux aliases
alias tma='tmux attach -d -t'
alias git-tmux='tmux new -s $(basename $(pwd))'

# git -> g
alias g='git'

if [ -x ~/.bashrc_local ]; then
    . ~/.bashrc_local
fi
