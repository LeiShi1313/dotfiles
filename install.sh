git clone --bare https://github.com/LeiShi1313/dotfiles.git $HOME/.dotfiles
function dotfiles {
  /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}

# Backup old dotfiles
mkdir -p $HOME/.dotfiles-backup
dotfiles checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .dotfiles-backup/{}
fi;
dotfiles checkout

# Oh-my-tmux setup
cd $HOME
dotfiles submodule init && dotfiles submodule update
ln -s -f $HOME/.tmux/.tmux.conf $HOME/.tmux.conf
ln -s -f $HOME/.tmux/.tmux.conf.local $HOME/.tmux.conf.local

dotfiles config status.showUntrackedFiles no
