# Navigation
function ..     ; cd .. ; end
function ...    ; cd ../.. ; end
function ....   ; cd ../../.. ; end
function .....  ; cd ../../../.. ; end
function ...... ; cd ../../../../.. ; end

# vim alias
alias vi='nvim'
alias vim='nvim'

# python alias
# alias python='python3.12'
# alias pip='pip3'

alias venv!='. ~/.venv/bin/activate.fish'
alias cls='clear'

alias ls='lsd -alh --color always'

# rmtrash
alias del='trash'

#rsync alias
alias rsync='rsync -hauvzPb --suffix=_bkp'

alias env='env | sort -nr' 

alias reload!='. $XDG_CONFIG_HOME/fish/config.fish'
alias e-path='vi $XDG_CONFIG_HOME/fish/path.fish'

alias gradle='noti gradle'
alias make='noti make'
alias mvn='noti mvn'
