git clone --bare git@github.com:LeiShi1313/dotfiles.git $HOME/.dotfiles
function dotfiles {
  /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
} 
dotfiles submodule init && dotfiles submodule update

# Backup old dotfiles
mkdir -p .dotfiles-backup
dotfiles checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .dotfiles-backup/{}
fi;
dotfiles checkout

ln -s $HOME/.tmux/.tmux.conf $HOME/.tmux.conf
ln -s $HOME/.tmux/.tmux.conf.local $HOME/.tmux.conf.local

dotfiles config status.showUntrackedFiles no
