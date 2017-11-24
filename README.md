# zaw-src-nerd-icon

Optional sources of [zaw](https://github.com/zsh-users/zaw) for nerd-icon:

- nerd-icon

## Installation

If you are using zplug, just add the code below in your .zshrc.

```zsh
zplug "zsh-users/zaw"
zplug "GeneralD/zaw-src-nerd-icon", on:"zsh-users/zaw"
```

For oh-my-zsh, clone this repo into ~/.oh-my-zsh/custom/plugins and add plugin as below.

```zsh
plugins+=(zaw zaw-src-nerd-icon)
```

## Dependencies

Required commands:

- uni2ascii
- ascii2uni

If you are using macOS, you can install them with command

```zsh
brew install uni2ascii
```

## Licence

DTFPL