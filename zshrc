# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

#export ZSH_TMUX_AUTOSTART=true

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-git-prompt zsh-syntax-highlighting history-substring-search tmux ng web-search common-aliases zsh-completions history zsh-quick-history fnm)

source $ZSH/oh-my-zsh.sh
source $HOME/.bash_aliases

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$HOME/.local/bin"

# fnm
export PATH="/home/cristian/.local/share/fnm:$PATH"
#eval "`fnm env`"
eval "$(fnm env --use-on-cd)"

#export JAVA_HOME="/usr/lib/jvm/default-java"
export JAVA_HOME="/home/cristian/apps/android-studio/jre/"
export ANDROID_HOME="$HOME/Android/Sdk"
export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
export LC_ALL=en_US.UTF-8

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:$ANDROID_HOME/tools/bin:$ANDROID_HOME/tools:$PATH"
export QT_QPA_PLATFORM=''

# for zsh-completions plugin (it is a bit slow)
#autoload -U compinit && compinit

source /home/cristian/.rvm/scripts/rvm

test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

#bindkey '\t\t' quick-history-execute
bindkey '^x' quick-history-execute
