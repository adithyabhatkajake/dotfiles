#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# added by Anaconda3 4.3.1 installer
#export PATH="/home/adithya/anaconda3/bin:$HOME/bin:$PATH:./"

export PATH=$PATH:$HOME/bin:./:/home/adithya/.gem/ruby/2.4.0/bin

alias l='ls'
alias ll='ls -alF'
alias la='ls -a'

alias anaconda='/home/adithya/anaconda3/bin/python'

export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
