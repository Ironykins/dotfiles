alias h='history'
alias j='jobs -l'
alias ..='cd ..'
alias acs='apt-cache search'
alias apti='sudo aptitude install'
alias emacs='emacs -nw'
alias aust='ssh -4 konrad@austhaus.com'
alias cse='ssh ktaust@cse.cpsc.ucalgary.ca'
alias csc='ssh ktaust@csc.cpsc.ucalgary.ca'
alias gf='echo no gf'
alias tmux="TERM=screen-256color-bce tmux"
alias jsprint='python -m json.tool'

#-------------------------------------------------------------
# The 'ls' family (this assumes you use a recent GNU ls).
#-------------------------------------------------------------
# Add colors for filetype and  human-readable sizes by default on 'ls':
alias ls='ls -h --color'
alias lx='ls -lXB'         #  Sort by extension.
alias lk='ls -lSr'         #  Sort by size, biggest last.
alias lt='ls -ltr'         #  Sort by date, most recent last.
alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
alias lu='ls -ltur'        #  Sort by/show access time,most recent last.

# The ubiquitous 'll': directories first, with alphanumeric sorting:
alias ll="ls -lv --group-directories-first"
alias lm='ll |more'        #  Pipe through 'more'
alias lr='ll -R'           #  Recursive ls.
alias la='ll -A'           #  Show hidden files.
alias l='ls -CF'		   #  Why not, right?
alias tree='tree -Csuh'    #  Nice alternative to 'recursive ls' ...

alias such='git'
alias so='git'
alias much='git'
alias very='git'
alias wow='git status'
alias glog='git log --graph --decorate --oneline --all'
