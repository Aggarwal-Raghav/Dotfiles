####################
# personal scripts #
####################
fish_add_path --append $HOME/.local/personal/bin

########################
# python3.12 brew path #
########################
fish_add_path $(brew --prefix python)/libexec/bin

###############
# java17 path #
###############
# set -x JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.8/Contents/Home
# set -x JAVA_HOME /Library/Java/JavaVirtualMachines/openjdk-17.jdk/Contents/Home/
set -gx JAVA_HOME (/usr/libexec/java_home -v 21)
# set -x JAVA_HOME /Library/Java/JavaVirtualMachines/openjdk-25.jdk/Contents/Home
fish_add_path $JAVA_HOME/bin


fish_add_path --append $HOME/.local/bin

#########
# maven #
#########
set -x MAVEN_OPTS "-Dspring.profiles.active=local"
set -x M2_HOME $(brew --prefix)/opt/maven/libexec
set -x M2_REPO $HOME/.m2/repository

##########
# gradle #
##########
set -x GRADLE_HOME $HOME/Desktop/software/gradle
set -x GRADLE_OPTS "-Dgradle.user.home=$XDG_CACHE_HOME/gradle"
fish_add_path $GRADLE_HOME/bin

#######################
# ripgrep config path #
#######################
set -x RIPGREP_CONFIG_PATH $XDG_CONFIG_HOME/ripgrep/config

####################
# wget config path #
####################
set -x WGETRC $XDG_CONFIG_HOME/wget/config


#########
# pager #
#########
set -x PAGER "less -SFX --mouse"
set -x LESSHISTFILE $XDG_STATE_HOME/less/history

#######
# gpg #
#######
set -x GNUPGHOME $XDG_CONFIG_HOME/gpg

##########
# protoc #
##########
set -l PROTOC $HOME/Desktop/software/protoc
fish_add_path --append $PROTOC/bin


#########################
# General ENV Variables #
#########################
set -x VISUAL nvim
set -x EDITOR nvim

########
# RUST #
########
set -x RUSTUP_HOME $XDG_CONFIG_HOME/.rustup
set -x CARGO_HOME $XDG_CONFIG_HOME/.cargo
fish_add_path --append $CARGO_HOME/bin

set -x CURL_HOME $XDG_CONFIG_HOME/curl
