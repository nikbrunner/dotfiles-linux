# dotfiles [Linux]

Save-place for my Linux dofiles.

```
# Create folder for bare Git Repository
mkdir $HOME/.dotfiles

# Initialize bare Git Repository
git init --bare $HOME/.dotfiles

# add this alias to your .zshrc or .bashrc
alias df='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dfp="df commit -a -m \"Updates\" && df push"

# Reload shell
zsh

# hide untracked files
df config --local status.showUntrackedFiles no

# Add remote repo
df remote add origin git@github.com:nikbrunner/df-apple.git

# Pull from remote
df pull origin master

# Basic usage example:
df add /path/to/file

dfp
```
