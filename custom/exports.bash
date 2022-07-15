#!/bin/bash
# TODO: create checks for macos vs linux
# Maybe different branches forked off master?
# Or profiles in bash-it, those are a thing

# All the exports for everything

# Shut up zsh
export BASH_SILENCE_DEPRECATION_WARNING=1

# Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Default editor:
export EDITOR=vim

# Set XDG default variables
# Default config directory
export XDG_CONFIG_HOME=$HOME/.config
# Default cache directory
export XDG_CACHE_HOME=$HOME/.cache
# Default data directory
export XDG_DATA_HOME=$HOME/.local/share
# Default state directory
export XDG_STATE_HOME=$HOME/.local/state

# Put local dirs in path
export PATH=~/.local/bin:$PATH
export PATH=~/.local/share:$PATH
export PATH=~/.local/state:$PATH
export PATH=~/local/bin:$PATH

# Auto add ssh keys
keychain id_ed25519_work_git
keychain id_ed25519_personal
. ~/.keychain/`uname -n`-sh

# Put tldr in path
export PATH=~/bin:$PATH

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Go
export GOBIN="$HOME/projects/go/bin"
export GOMODCACHE="$HOME/projects/go/pkg"
export GOPATH="$HOME/projects/go"
export GOPRIVATE="github.com/AspirationPartners"

# Vault link
export VAULT_ADDR=https://qa-vault.aspiration-corp.com

# Ruby
# RVM: Ruby Version Manager
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Confluence
export CONFLUENCE_USERNAME=mgoossens@aspiration.com

export awsDockerLogin="aws ecr get-login-password | docker login --password-stdin --username AWS 332894900161.dkr.ecr.us-west-2.amazonaws.com"
