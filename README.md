# Cristian Stu Dot Files

These are config files to set up a system the way I like it. 
## Installation

Run the following commands in your terminal.

```terminal
git clone git://github.com/cristianstu/dotfiles ~/.dotfiles
cd ~/.dotfiles
./bin/install
```

After installing, open a new terminal window to see the effects.

## Uninstall

To remove the dotfile configs, run the following commands. Be certain to double check the contents of the files before removing so you don't lose custom settings.

```
unlink ~/.tmux
unlink ~/.tmux-scroll-copy-mode
unlink ~/.vim
unlink ~/.bash_aliases
unlink ~/.gemrc
unlink ~/.gitconfig
unlink ~/.gitignore
unlink ~/.gvimrc
unlink ~/.irbrc
unlink ~/.tmux.conf
unlink ~/.vimrc

rm ~/.zshrc # careful here
```

Then open a new terminal window to see the effects.
