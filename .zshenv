# Pyenv && pyenv-virtualenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"

# Install Ruby Gems to home
export GEM_HOME="$HOME/gems"
export PATH="$HOEM/gems/bin:$PATH"
