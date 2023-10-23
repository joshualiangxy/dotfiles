# Dotfiles

![Screenshot of shell prompt](https://i.imgur.com/qzdMWzW.png)
![Screenshot of neovim](https://i.imgur.com/qaFKEI9.png)

### My current set up
Terminal: Windows-Terminal<br>
Shell: zsh<br>
Editor: neovim<br>
**Note**: I am no longer on Linux, so some of these files(kitty terminal, i3)
will no longer be updated

--------------------------------------------------------------------------------

## Installation

TODO: Make actual scripts to set everything up

**Warning:** If you want to try out these dotfiles, fork the repo first and
review the content that you want to use. Use at your own risk!

**Things to do before setting up:**

You will need [ripgrep](https://github.com/BurntSushi/ripgrep) and
[fzf](https://github.com/junegunn/fzf).

In order for many of the terminal icons and powerline arrows to show up,
get a [nerd-font](https://github.com/ryanoasis/nerd-fonts) and configure your 
terminal to make use of the font.

I am currently using the font InconsolataGo NF

### zsh

1. Install [starship](https://starship.rs/) first
2. Copy both `.zshrc`, `.zshenv`, `.zlogout` and `.custom_aliases` to the home
   folder.
3. Copy the `zsh` directory to the `$HOME/.config` directory
4. Restart your shell.

### For everything else
Copy all remaining directories into the `$HOME/.config` directory

