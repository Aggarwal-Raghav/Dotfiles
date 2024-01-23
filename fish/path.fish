####################
# personal scripts #
####################
set -x PATH $PATH $HOME/.local/personal/bin

########################
# python3.12 brew path #
########################
set -x PATH $(brew --prefix)/opt/python@3.12/libexec/bin $PATH

###############
# java17 path #
###############
set -x JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.8/Contents/Home
set -x PATH $JAVA_HOME/bin $PATH

#########
# maven #
#########
set -x MAVEN_OPTS "-Dspring.profiles.active=local"
set -x M2_HOME $(brew --prefix)/Cellar/maven/3.9.6/libexec
set -x M2_REPO $HOME/.m2/repository

##########
# gradle #
##########
set -x GRADLE_HOME $(brew --prefix)/Cellar/gradle/8.5/libexec
set -x GRADLE_OPTS "-Dgradle.user.home=$XDG_CACHE_HOME/gradle"

#####################
# sublime text path #
#####################
set -l SUBLIME_HOME /Users/raghav/Desktop/personal/software/Sublime-Text.app/Contents/SharedSupport
set -x PATH $PATH $SUBLIME_HOME/bin

#######################
# ripgrep config path #
#######################
set -x RIPGREP_CONFIG_PATH $XDG_CONFIG_PATH/ripgrep/config

####################
# wget config path #
####################
set -x WGETRC $XDG_CONFIG_PATH/wget/config

#######
# FZF #
#######
set -x FZF_DEFAULT_COMMAND 'fd --type f --color=never --hidden'
set -x FZF_DEFAULT_OPTS '--no-height'
set -x FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND
set -x FZF_CTRL_T_OPTS "--preview 'bat --color=always --line-range :50 {}'"
set -x FZF_ALT_C_COMMAND 'fd --type d . --color=never --hidden'
set -x FZF_ALT_C_OPTS "--preview 'tree -C {} | head -50'"

#########
# pager #
#########
set -x PAGER "less -SFX --mouse"
set -x LESSHISTFILE $XDG_STATE_HOME/less/history

#######
# gpg #
#######
set -x GNUPGHOME /Users/raghav/.config/gpg

##########
# protoc #
##########
set -l PROTOC $HOME/Desktop/personal/software/protoc
set -x PATH $PATH $PROTOC/bin
