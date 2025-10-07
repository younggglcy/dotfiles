export ZSH="$HOME/.oh-my-zsh"

# git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
# ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
ZSH_THEME="spaceship"

# update automatically without asking
zstyle ':omz:update' mode auto

# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-z
)

source $ZSH/oh-my-zsh.sh

# nodejs
alias nio="ni --prefer-offline"
alias d="nr dev"
alias b="nr build"
alias t="nr test"
alias lint="nr lint"
alias lintf="nr lint --fix"

# fnm
eval "$(fnm env --use-on-cd --shell zsh)"

# rust
alias cb="cargo build"
alias cr="cargo run"
alias ct="cargo test"
alias cf="cargo fmt"
alias cl="cargo clippy"

# [Deprecated] npm simple-git-hooks https://github.com/toplenboren/simple-git-hooks
# export SIMPLE_GIT_HOOKS_RC="$HOME/.simple-git-hooks.rc"

function addFolderToPath() {
  if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
    export PATH="$1:$PATH"
  fi
}

HOME_BIN_DIR="$HOME/bin"
addFolderToPath "$HOME_BIN_DIR"

# golang
GO_PATH="/usr/local/go/bin"
addFolderToPath "$GO_PATH"

HOME_GO_BIN_DIR="$HOME/go/bin"
addFolderToPath "$HOME_GO_BIN_DIR"

function i() {
  cd ~/projects/$1
}
