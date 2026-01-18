source /usr/share/cachyos-fish-config/cachyos-config.fish

# Enable vim mode
fish_vi_key_bindings

# Inits
starship init fish | source
zoxide init fish | source
pyenv init - fish | source

# Variables
set -U fish_user_paths $HOME/.npm-global/bin $fish_user_paths
## fcitx
set -x GTK_IM_MODULE fcitx
set -x QT_IM_MODULE fcitx
set -x XMODIFIERS "@im=fcitx"
set -x INPUT_METHOD fcitx
set -x QT_QPA_PLATFORMTHEME qt5ct
set -x QT_QPA_PLATFORMTHEME qt6ct
## pyenv
set -Ux PYENV_ROOT $HOME/.pyenv
test -d $PYENV_ROOT/bin; and fish_add_path $PYENV_ROOT/bin

# Shortcuts
set -x FI $HOME/.config/fish/config.fish
set -x LVIM $HOME/.config/lvim/config.lua

# Functions

## Fuzzy finder
function c
    set dir (fd -t d . $argv | fzf)
    if test -n "$dir"
        cd "$dir"
    end
end

function v
    set file (fd -t f . $argv | fzf)
    if test -n "$file"
        vi "$file"
    end
end

## Backup

function backup --argument filename
    cp $filename $filename.bak
end

## Fish command history
function history
    builtin history --show-time='%F %T '
end

# Aliases

## git
alias g="git"
alias ga="git add"
alias gb="git branch"
alias gc="git commit -m"
alias gco="git checkout"
alias gd="git diff"
alias gf="git fetch"
alias gi="git init"
alias gl="git log"
alias gm="git merge"
alias gp="git pull"
alias gr="git remote"
alias gre="git reset"
alias gs="git status"
alias cf="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME" # for dotfiles

## zoxide
alias j="z"

## eza
alias ls="eza -a --color=always --group-directories-first --icons"
alias ll="ls -l --git"
alias lt="ls --tree --level=2"

# uv
alias ur="uv run"

# lvim
alias vi="lvim"
alias svi="sudo ~/.local/bin/lvim"

# clipboard
alias clip="wl-copy"
