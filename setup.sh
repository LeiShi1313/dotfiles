sudo apt update

sudo apt install -y git vim build-essential zsh htop nginx make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl \
ruby-full

# Install node & yarn
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install -y nodejs yarn

# Switch to zsh and set up oh-my-zsh
sudo usermod -s $(which zsh) $(whoami)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Setup pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# Setup pyenv virtualenv
git clone https://github.com/pyenv/pyenv-virtualenv.git $HOME/.pyenv/plugins/pyenv-virtualenv

# Setup Vundle
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

# Setup git
git config --global core.editor "vim"
git config --global user.email "me@leishi.io"
git config --global user.name "Lei Shi"
