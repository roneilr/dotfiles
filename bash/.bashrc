### Standard stuff ###
if [[ $- != *i* ]] ; then
	# Shell is non-interactive, return now.
	return
fi

export TERM=xterm-256color

# first character is ASCII for move cursor to beginning of line
export PS1="\[\033[G\]\[[33m\]\A \[[32m\]\u@\h \[[34m\]\w \$ \[[0m\]"
export PATH=$PATH:~/Scripts

### Aliases and function helpers ###

# BASH Helpers
alias ls='ls -G'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias countfiles='for t in files links directories; do echo `find . -type ${t:0:1} | wc -l` $t; done 2> /dev/null'

# Text Editing
alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'

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

# outdated Debian VM
#alias sshdev='ssh roneil@172.16.166.133 $@'
#alias sshrootdev='ssh root@172.16.166.133 $@'
#alias startdev='/Library/Application\ Support/VMware\ Fusion/vmrun start ~/Documents/Virtual\ Machines.localized/Debian\ 5\ 64-bit.vmwarevm/Debian\ 5\ 64-bit.vmx nogui'
#alias stopdev='sshrootdev shutdown -h now'

# tmux aliases
alias tma='tmux attach -d -t'
alias git-tmux='tmux new -s $(basename $(pwd))'

# git -> g
alias g='git'
