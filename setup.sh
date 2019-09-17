sudo apt update

sudo apt install -y git vim build-essential zsh htop nginx make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl

# Switch to zsh and set up oh-my-zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Setup pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# Setup pyenv virtualenv
git clone https://github.com/pyenv/pyenv-virtualenv.git $HOME/.pyenv/plugins/pyenv-virtualenv

# Setup git
git config --global core.editor "vim"
git config --global user.email "me@leishi.io"
git config --global user.name "Lei Shi"
