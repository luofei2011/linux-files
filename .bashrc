export TERM="xterm-256color"
TZ='Asia/Shanghai'; export TZ

# 命令历史记录快捷键
bind '"\x1b\x5b\x41":history-search-backward'
bind '"\x1b\x5b\x42":history-search-forward'
export EDITOR=vim
export GIT_EDITOR=vim

# 大小写不敏感
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"
