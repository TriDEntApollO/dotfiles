
# Trident Apollo's dotfiles

![wezterm-screenshot](https://github.com/TriDEntApollO/dotfiles/assets/68052236/6738f0a6-a2ae-4a2e-a0fe-a3fefd5ccbf6)

**Note:** The terminal (wezterm) background is blured using an third-party gnome plugin called [**Blur My Shell**](https://extensions.gnome.org/extension/3193/blur-my-shell/). Wezterm doesnt have native blur support.

## Dependencies

Required for installation:

- [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH#install-and-set-up-zsh-as-default)
- [stow](https://www.gnu.org/software/stow/)
- [nerdfetch](https://github.com/ThatOneCalculator/NerdFetch)
- [oh my zsh](https://ohmyz.sh/)
- [powerlevel10k](https://github.com/romkatv/powerlevel10k)

Cli tools (recommended for proper installation):

- [fzf](https://github.com/junegunn/fzf)
- [bat](https://github.com/sharkdp/bat)
- [eza](https://github.com/eza-community/eza)
- [zoxide](https://github.com/ajeetdsouza/zoxide)
- [fzf-git.sh](https://github.com/junegunn/fzf-git.sh)

Plugins (recommended for proper installation):

- [auto-notify](https://github.com/MichaelAquilina/zsh-auto-notify)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)


**Note:** If you skip any of the dependencies, you will have to modify the dot files accordingly.


## Take Backup [Important]

Before installation please take backup of al your current configuration files by either moving them into another direcotry or by renaming them,  example rename your ```.zshrc``` file to ```.zshrc.backup```.

If you dont move or rename the existing files the installation will fail while running the ```stow``` command 

## Installation

**Warning:** If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don’t want or need. Alternatively you can clone the repository, delete the .git direcotry and create your own local git repository. Don’t blindly use my settings unless you know what that entails. Use at your own risk!

**Note:** If you are having problems with any of the tools or plugins please visit their official repository.

### Using git and stow

You can clone the repository wherever you want. (I like to keep it in my home '~/dotfiles').

```bash
git clone https://github.com/TriDEntApollO/dotfiles.git
```
cd into the directory

```bash
cd dotfiles
```

run **stow** to create symlink to your home folder

```bash
stow -t ~/ .
```

All in a single command 

```bash
git clone https://github.com/TriDEntApollO/dotfiles.git && cd dotfiles && stow -t ~/ .
```
To add new files or folders to the dotfiles copy your files/folders into thwe dotfiles directory and run the stow command

```bash
stow -t ~/ .
```
You will have to do this every time you add a new file/folder into your dotfiles directory

## Note

- This repository is only for maintening my dotfiles please dont excpect active commits and fixes.
- Don't open issues before going through the official pages of the tool/plugin that you are facing problems with.
- For a more intutitive step by step tutorial please refer to [this video](https://www.youtube.com/watch?v=y6XCebnB9gs&t=3s).
