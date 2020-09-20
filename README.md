# Dotfiles

![Screenshot of shell prompt](https://i.imgur.com/qzdMWzW.png)
![Screenshot of neovim](https://i.imgur.com/RNtSKsm.png)

### My current set up
Terminal: Windows-Terminal<br>
Shell: bash<br>
Editor: neovim<br>
**Note**: I am no longer on linux, so some of these files(kitty terminal, i3)
will no longer be updated

--------------------------------------------------------------------------------

## Installation

**Warning:** If you want to try out these dotfiles, fork the repo first and
review the content that you want to use. Use at your own risk!

**Things to do before setting up:**

Many of the dotfiles require [nodejs](https://github.com/nvm-sh/nvm) and 
python, so probably install both first.

In order for many of the terminal icons and powerline arrows to show up,
get a [nerd-font](https://github.com/ryanoasis/nerd-fonts) and configure your 
terminal to make use of the font.

I am currently using the font InconsolataGo NF

### bash/bash_aliases

1. Install [powerline-shell](https://github.com/b-ryan/powerline-shell) first
2. Copy both `.bashrc` and `.bash_aliases` to the home folder.
3. Restart your shell.

### neovim

1. Install [neovim](https://github.com/neovim/neovim).
2. Install [vim-plug](https://github.com/junegunn/vim-plug) or whatever plugin
    manager you prefer(my neovim config is set up with vim-plug).
3. Copy the `init.vim` file to `~/.config/nvim/init.vim`.
4. Check if you can open the file in neovim.<br>
    If you're getting errors about ^M not an editor command or trailing
    characters, use `:w ++ff=unix` to save.
5. Once the file is open, use `:PlugInstall` to install the plugins.

At this point, neovim should be quite usable. If you are still getting errors
when opening neovim, it might be that you have to install 
[nodejs](https://github.com/nvm-sh/nvm) and python, so go ahead and do that.

