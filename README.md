
# Trident Apollo's dotfiles

What does this dotfiles repository contain?

- ZSH config
- [Oh my zsh](https://ohmyz.sh/) plugins
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k) config
- [Wezterm](https://wezfurlong.org/wezterm/index.html) config
- [Neovim](https://neovim.io/) configs
- Icon packs
- Cusror packs
- Gnome-shell themes
- [Firefox](https://www.mozilla.org/en-US/firefox/) theme
- [NightTab](https://github.com/zombieFox/nightTab) extention theme
- Wallapers


![wezterm-screenshot](https://github.com/TriDEntApollO/dotfiles/assets/68052236/6738f0a6-a2ae-4a2e-a0fe-a3fefd5ccbf6)

**Note:** The terminal (wezterm) background is blured using an third-party gnome extention called [**Blur My Shell**](https://extensions.gnome.org/extension/3193/blur-my-shell/). Wezterm doesnt have native blur support.

## Dependencies

Please install these dependencies before proceeding with the installation.

**Warning:** If you skip any of the dependencies, you will have to modify the dot files accordingly.

**Note:** Dependencies that have **"manual installation not required"** dont require you to manually install them. They come pre-pacaked in the dotfiles.

Required for installation:

- [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH#install-and-set-up-zsh-as-default)
- [stow](https://www.gnu.org/software/stow/)
- [nerdfetch](https://github.com/ThatOneCalculator/NerdFetch)
- [oh my zsh](https://ohmyz.sh/)
- [powerlevel10k](https://github.com/romkatv/powerlevel10k) ***(manual installation not required)***

Cli tools ***(recommended for proper installation)***:

- [fzf](https://github.com/junegunn/fzf)
- [bat](https://github.com/sharkdp/bat)
- [eza](https://github.com/eza-community/eza)
- [zoxide](https://github.com/ajeetdsouza/zoxide)
- [neovim](https://neovim.io)
- [fzf-git.sh](https://github.com/junegunn/fzf-git.sh) ***(manual installation not required)***


ZSH plugins ***(manual installation not required)***:

- [auto-notify](https://github.com/MichaelAquilina/zsh-auto-notify)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)


## Take Backup [Important]

Before installation please take backup of all your current configuration files **(you only need to move/rename those files which exist in this repository and not any other files)** by either moving them into another direcotry or by renaming them,  example rename your `.zshrc` file to `.zshrc.backup`.

**If you have a prexisting neovim config:** You dont have to sacrifice your config to use the others provided move the rename your `~/.config/nvim` to as per your liking, example `~/.config/NvCustom`. And add your folder's name to the **items** list in the **nvims function** in your `.zshrc` file. The line you need to edit is 

```shell
items=("NvChad" "LazyVim" "LunarVim" "AstroNvim" "Default")
```

For the neovim config switcher to be working you need **fzf** installed in your system, please check the dependencies.

**Warning:** If you dont move or rename the existing files that conflict, installation will fail while running the `stow` command 

## Installation

**Warning:** If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don’t want or need. Alternatively you can clone the repository, delete the .git direcotry and create your own local git repository. Don’t blindly use my settings unless you know what that entails. Use at your own risk!

**Note:** If you are having problems with any of the tools or plugins please visit their official repository.

- To install **gnome-shell theme** and icons see [GNOME.md](https://github.com/TriDEntApollO/dotfiles/blob/main/GNOME.md)

- To install **Firefox theme** see [FIREFOX.md]()


### Using git to clone

You can clone the repository wherever you want. (I like to keep it in my home '~/dotfiles').

```shell
git clone https://github.com/TriDEntApollO/dotfiles.git
```
### Git free download

Download the zip file using `curl` 

```shell
curl -LO https://github.com/TriDEntApollO/dotfiles/archive/refs/heads/main.zip
```

and extract/unzip the file using the `unzip` command, rename the folder and delete the zip file.

```shell
unzip main.zip && mv dotfiles-main/ dotfiles/ && rm -f main.zip
```

**Rest of the installation is same for both processes**

cd into the directory

```shell
cd dotfiles
```

run **stow** to create symlink to your home folder

```shell
stow -t ~/ .
```

**If stow gives you a warning like**

```shell
WARNING! stowing . Would cause conflicts:
    *existing target is neither a link nor directory: .config/wezterm/wezterm.lua
All operations aborted.
```

 you might have skipped some conflicting files or the backup process entirely. Please refer to [Take Backup](https://github.com/TriDEntApollO/dotfiles?tab=readme-ov-file#take-backup-important).

Single command install **using git**

```shell
git clone https://github.com/TriDEntApollO/dotfiles.git && cd dotfiles && stow -t ~/ .
```

Single command install **using curl**

```shell
curl -LO https://github.com/TriDEntApollO/dotfiles/archive/refs/heads/main.zip && unzip main.zip && mv dotfiles-main/ dotfiles/ && rm -f main.zip && cd dotfiles && stow -t ~/ .
```
### Updates and file changes

**To update** your dotfiles delete the existing `dotfiles` directory 

```shell
rm -rf dotfiles
```

Then re-clone or download the repository via you preferred method and re-run the stow command in the new `dotfiles` directory.


**To add new files** or folders to the dotfiles copy your files/folders into the dotfiles directory and run the stow command

```shell
stow -t ~/ .
```

You will run this command every time you add a new file/folder into your dotfiles directory.

**Note:** Your files/folders should be structured in the dotfiles folder in the exactly same way it is/should be in your `$HOME` direcotry

For example if your files are structured like this in your **`$HOME`** directory

```
$HOME
│
├── .config
│   └── wezterm
│       └── wezterm.lua
│
└── .zshrc
```

Then it should be structure also like this in the **`dotfiles`** directory

```
dotfiles
│
├── .config
│   └── wezterm
│       └── wezterm.lua
│
└── .zshrc
```



## Note

- This repository is only for maintening my dotfiles please dont excpect active commits and fixes.
- Don't open issues before going through the official pages of the tool/plugin that you are facing problems with.
- For a more intutitive step by step tutorial please refer to [this video](https://www.youtube.com/watch?v=y6XCebnB9gs&t=3s).
