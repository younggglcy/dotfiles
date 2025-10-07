# Ensure this script runs in a zsh environment
echo "running ~/.config/husky/init.sh"
if ! [ -z "$ZSH_VERSION" ]; then
  exec zsh
fi
