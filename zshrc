# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

#nvm, deactivate features, auto load on new splited panels is not working
export NVM_AUTO_USE=false
export NVM_NO_USE=false
export NVM_LAZY_LOAD=false

#export ZSH_TMUX_AUTOSTART=true

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(zsh-git-prompt zsh-syntax-highlighting history-substring-search zsh-nvm tmux ng web-search common-aliases zsh-completions)

source $ZSH/oh-my-zsh.sh
source $HOME/.bash_aliases

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$HOME/.local/bin"

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
autoload -U compinit && compinit

# Load nvmrc, plugin is not working properly on new splited panels
autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  elif [[ $(nvm version) != $(nvm version default)  ]]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

source /home/cristian/.rvm/scripts/rvm

#Es muy lento!!
#[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

