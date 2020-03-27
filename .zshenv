# Pyenv && pyenv-virtualenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# Install Ruby Gems to home
export GEM_HOME="$HOME/.gems"
export NPM_GLOBAL="$HOME/.npm-global"
export PATH="$HOME/.gems/bin:$HOME/.npm-global/bin:$PATH"
