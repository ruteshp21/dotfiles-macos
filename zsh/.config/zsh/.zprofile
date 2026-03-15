## -----------------------------------------------------------------------------
## ZSH LOGIN SHELL (.zprofile)
##
## Loaded only for login shells, after .zshenv.
## Ideal for running commands that should only execute once per session.
## -----------------------------------------------------------------------------

## -----------------------------------------------------------------------------
## HOMEBREW
## -----------------------------------------------------------------------------
# Initialize Homebrew for Apple Silicon Macs.
if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi
