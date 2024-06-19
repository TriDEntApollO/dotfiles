# --- Powerlevel10k ---

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# --- NerdFetch ---

nerdfetch
echo ""

# --- OH-MY-ZSH ---

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="/opt/nvim/:/home/kerick/.local/bin:/home/kerick/.cargo/bin:$PATH"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search auto-notify web-search)

# Source oh-my-zsh and plugin files

source $ZSH/oh-my-zsh.sh 

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# Source powerlevel10k file 
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# --- Set up aliases ---

alias cd="z"
alias q="exit"
alias c="clear"
alias cls="clear"
alias ll="ls -latr"
alias ls="ls --color=auto"
alias sudo="sudo "
alias ws="web_search"
alias wsh="glow /home/kerick/.oh-my-zsh/plugins/web-search/README.md"
alias yi="yay -S"
alias yu="yay -Sy"
alias yr="yay -R"
alias pi="sudo pacman -S"
alias pu="sudo pacman -Sy"
alias pr="sudo pacman -R"
alias sysupdate="sudo pacman -Syu"
alias grep="grep --color=auto"
alias clear="clear && nerdfetch"
alias src="source ~/.zshrc && clear"
alias poweroff="sudo shutdown now"
alias reboot="sudo shutdown -r now"
alias l="eza --color=always --icons=always --no-quotes"
alias le="eza --color=always --long --git --icons=always --no-permissions --no-quotes"
alias la="le --all"
alias lt="le --all --tree --level=2"

# Neovim aliases

alias vi="nvims"
alias vim="nvims"
alias nvim-lunar="lvim"
alias nvim-lazy="NVIM_APPNAME=LazyVim nvim"
alias nvim-chad="NVIM_APPNAME=NvChad nvim"
alias nvim-astro="NVIM_APPNAME=AstroNvim nvim"

# --- ZSH ---

# Initialize auto complition with ZSH

autoload -Uz compinit && compinit

# Setting up command history file

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# --- FZF (Fuzzy Finder) ---

# Set up color scheme (https://vitormv.github.io/fzf-themes)

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  --color=fg:-1,fg+:#ffffff,bg:-1,bg+:#443b68
  --color=hl:#6b5fb0,hl+:#ac48fd,info:#5d90ff,marker:#ff0073
  --color=prompt:#65f48e,spinner:#f56b6b,pointer:#cc41ff,header:#f352a5
  --color=gutter:#443b68,border:#5d4fa1,label:#f25282,query:#ffb647
  --border="bold" --border-label=" KERiCK " --preview-window="border-rounded" --padding="1"
  --prompt="> " --marker="" --pointer="󰁕" --separator="═"
  --scrollbar="█"'

# Set up fzf keybindings

source <(fzf --zsh)

# Use fd instead of fzf 

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

# Use fd (https://github.com/sharkdp/fd.git) for listing path candidates.
# - The first argument to the function ($1) is the base path to traversal.
# - See the source code (completion .{bash, zsh}) for the details.

function _fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
} 

# Use fd to generate the list for directory completion

function _fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

# Set up better fzf git integration 

source ~/.fzf-git.sh

# Set up file preview

show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi"

export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

# Advance Customization of fzf options via _fzf_comprun funtion.
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.

function _fzf_comprun() {
  local command=$1
  shift

  case "$command" in 
    cd)           fzf --preview 'eza --tree --color=always {} | head -200'  "$@" ;; 
    export|unset) fzf --preview "eval 'echo $'{}"     "$@" ;;
    ssh)          fzf --preview 'dig {}'                "$@" ;;
    *)            fzf --preview "$show_file_or_dir_preview" "$@" ;;
  esac
}

# --- BAT (Better cat) ---

export  BAT_THEME="Catppuccin_Mocha"

# --- TheFuck ---

# Set up thefuck aliases

eval $(thefuck --alias)
eval $(thefuck --alias fk)

# --- Zoxide (Better cd) ---

eval "$(zoxide init zsh)"

# --- Neovim config switcher --- 

# Set up the funtion

function nvims() {
  items=("NvChad" "LazyVim" "LunarVim" "AstroNvim" "Default")
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
  if [[ -z $config ]]; then
    echo "Nothing selected"
    return 0
  elif [[ $config == "LunarVim" ]]; then
    lvim $@
    return 0
  elif [[ $config == "Default" ]]; then
    config=""
  fi
  NVIM_APPNAME=$config nvim $@
}

# Add keybind

bindkey -s ^a "nvims **\t\n"
bindkey -s "^[^a" "nvims\n"

# --- Plugins ---

# Key Bind for substring-history-search

bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# Export config for auto-notify

export AUTO_NOTIFY_THRESHOLD=10 # time is in seconds
export AUTO_NOTIFY_TITLE="Finished executing '%command' !"
export AUTO_NOTIFY_BODY="It completed in %elapsed seconds with exit code %exit_code."
export AUTO_NOTIFY_EXPIRE_TIME=5000 # time is in miliseconds 
export AUTO_NOTIFY_IGNORE=("docker" "man" "nvim" "nvim-nightly" "tldr" "lf" "cat" "bat" "eza" "mc" "spf")
export AUTO_NOTIFY_ICON_SUCCESS=~/.config/auto-notify/success.png
export AUTO_NOTIFY_ICON_FAILURE=~/.config/auto-notify/failure.png

# --- Define Default Editor ---

EDITOR="nvim"

