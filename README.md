# Dotfiles

This is based on the Atlassian guide: https://www.atlassian.com/git/tutorials/dotfiles

## Setting up a new machine

1. Clone the repo as a bare repository:

`git clone --bare git@github.com:danielramost/dotfiles.git $HOME/.dotfiles`

2. Open a terminal and load the alias in the current session. This alias is defined in the repo's `.basrc` file, so it's not necessary to add it manually:

`alias gitdot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'`

3. Now, it's time to checkout the repo contents. It's possible some conflicts show up, because .bashrc is usually created on Linux fresh installs. It's a matter of either delete the conflicted files or merge them with the versioned ones.

`gitdot checkout`

4. Finally, set up the repository so it doesn't show untracked files:

`gitdot config --local status.showUntrackedFiles no`

