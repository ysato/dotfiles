# Get the aliases and functions
if [ -r ~/.bashrc ]; then
  source ~/.bashrc
fi

# Stop the bash silence deprecation warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# Set brew
eval "$(/opt/homebrew/bin/brew shellenv)"
