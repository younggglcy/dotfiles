# younggglcy's Dotfiles

- [.claude](./.claude)

- [.config](./.config)

  - [.config/husky/init.sh](./.config/husky/init.sh)
  
    [Husky](https://typicode.github.io/husky/) startup file

- [.ssh](./.ssh)
  
  - [.ssh/config](./.ssh/config)

  SSH client configuration

- [.vscode](./.vscode)

  My VS Code user configuration preference

  - [.vscode/keybindings.json](./.vscode/keybindings.json)

    Custom keyboard shortcuts, execute `Preferences: Open Keyboard Shortcuts (JSON)` in VS Code, and then add this file's contents
  - [.vscode/settings.json](./.vscode/settings.json)
  
    Custom User settings, execute `Preferences: Open User Settings (JSON)` in VS Code, and then add this files' contents

- [.gitconfig](./.gitconfig)

  Git configuration file

- ~~[.simple-git-hooks.rc](./.simple-git-hooks.rc)~~

  ~~RC file for [simple-git-hooks](https://github.com/toplenboren/simple-git-hooks)~~

> [!WARNING]
> Deprecated since husky is more recommeded than simple-git-hooks

- [.vimrc](./.vimrc)

  Vim configuration file

- [.zshrc](./.zshrc)

  Zsh configuration file for [Oh My Zsh](https://ohmyz.sh/), with customizations inspired by [antfu's dotfiles](https://github.com/antfu/dotfiles)

## Claude Code Setup

1. `curl -fsSL https://claude.ai/install.sh | bash`
2. Wakatime plugin
FYI: https://wakatime.com/claude-code
`claude plugin marketplace add https://github.com/wakatime/claude-code-wakatime.git`
`claude plugin i claude-code-wakatime@wakatime`
3. `claude plugin marketplace add anthropics/claude-plugins-official`
This should be added by default
4. pick plugins from claude-plugins-official
5. skills setup
`/plugin marketplace add anthropics/skills`
pick skills you like
6. context7 mcp
[context7](https://context7.com/)
`claude mcp add --header "CONTEXT7_API_KEY: YOUR_API_KEY" --transport http context7 https://mcp.context7.com/mcp`
7. github mcp
open `~/.claude.json` and add user scope github mcp server like https://github.com/anthropics/claude-plugins-official/blob/main/external_plugins/github/.mcp.json
8. https://github.com/OthmanAdi/planning-with-files
9. https://skills.sh/
10. https://github.com/wshobson/agents
