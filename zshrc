export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="$PATH:/usr/local/mysql/bin"
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

ROOT="/Users/$USER/"
# Path to your oh-my-zsh installation.
export ZSH="/Users/$USER/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="amuse"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
brew
osx
ssh-agent
pipenv
)

source $ZSH/oh-my-zsh.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f "/Users/$USER/google-cloud-sdk/path.zsh.inc" ]; then . "/Users/$USER/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "/Users/$USER/google-cloud-sdk/completion.zsh.inc" ]; then . "/Users/$USER/google-cloud-sdk/completion.zsh.inc"; fi

# Sets up the iterm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
