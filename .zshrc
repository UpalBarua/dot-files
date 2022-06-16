# Personal Zsh configuration file. It is strongly recommended to keep all
# shell customization and configuration (including exported environment
# variables such as PATH) in this file or in files sourced from it.
#
# Documentation: https://github.com/romkatv/zsh4humans/blob/v5/README.md.

# Periodic auto-update on Zsh startup: 'ask' or 'no'.
# You can manually run `z4h update` to update everything.
zstyle ':z4h:' auto-update      'no'
# Ask whether to auto-update this often; has no effect if auto-update is 'no'.
zstyle ':z4h:' auto-update-days '28'

# Don't start tmux.
zstyle ':z4h:' start-tmux       no

# Move prompt to the bottom when zsh starts and on Ctrl+L.
zstyle ':z4h:' prompt-at-bottom 'yes'

# Keyboard type: 'mac' or 'pc'.
zstyle ':z4h:bindkey' keyboard  'pc'

# Mark up shell's output with semantic information.
zstyle ':z4h:' term-shell-integration 'yes'

# Right-arrow key accepts one character ('partial-accept') from
# command autosuggestions or the whole thing ('accept')?
zstyle ':z4h:autosuggestions' forward-char 'accept'

# Recursively traverse directories when TAB-completing files.
zstyle ':z4h:fzf-complete' recurse-dirs 'no'

# Enable direnv to automatically source .envrc files.
zstyle ':z4h:direnv'         enable 'no'
# Show "loading" and "unloading" notifications from direnv.
zstyle ':z4h:direnv:success' notify 'yes'

# Enable ('yes') or disable ('no') automatic teleportation of z4h over
# SSH when connecting to these hosts.
zstyle ':z4h:ssh:example-hostname1'   enable 'yes'
zstyle ':z4h:ssh:*.example-hostname2' enable 'no'
# The default value if none of the overrides above match the hostname.
zstyle ':z4h:ssh:*'                   enable 'no'

# Send these files over to the remote host when connecting over SSH to the
# enabled hosts.
zstyle ':z4h:ssh:*' send-extra-files '~/.nanorc' '~/.env.zsh'

# Clone additional Git repositories from GitHub.
#
# This doesn't do anything apart from cloning the repository and keeping it
# up-to-date. Cloned files can be used after `z4h init`. This is just an
# example. If you don't plan to use Oh My Zsh, delete this line.
z4h install ohmyzsh/ohmyzsh || return

# Install or update core components (fzf, zsh-autosuggestions, etc.) and
# initialize Zsh. After this point console I/O is unavailable until Zsh
# is fully initialized. Everything that requires user interaction or can
# perform network I/O must be done above. Everything else is best done below.
z4h init || return

# Extend PATH.
path=(~/bin $path)
PATH=$PATH:.local/bin

# Export environment variables.
export GPG_TTY=$TTY

# Source additional local files if they exist.
z4h source ~/.env.zsh

# Use additional Git repositories pulled in with `z4h install`.
#
# This is just an example that you should delete. It does nothing useful.
z4h source ohmyzsh/ohmyzsh/lib/diagnostics.zsh  # source an individual file
z4h load   ohmyzsh/ohmyzsh/plugins/emoji-clock  # load a plugin

# Define key bindings.
z4h bindkey z4h-backward-kill-word  Ctrl+Backspace     Ctrl+H
z4h bindkey z4h-backward-kill-zword Ctrl+Alt+Backspace

z4h bindkey undo Ctrl+/ Shift+Tab # undo the last command line change
z4h bindkey redo Alt+/            # redo the last undone command line change

z4h bindkey z4h-cd-back    Alt+Left   # cd into the previous directory
z4h bindkey z4h-cd-forward Alt+Right  # cd into the next directory
z4h bindkey z4h-cd-up      Alt+Up     # cd into the parent directory
z4h bindkey z4h-cd-down    Alt+Down   # cd into a child directory

# Autoload functions.
autoload -Uz zmv

# Define functions and completions.
function md() { [[ $# == 1 ]] && mkdir -p -- "$1" && cd -- "$1" }
compdef _directories md

# Define named directories: ~w <=> Windows home directory on WSL.
[[ -z $z4h_win_home ]] || hash -d w=$z4h_win_home

# Define aliases.
alias tree='tree -a -I .git'

# Add flags to existing aliases.
alias ls="${aliases[ls]:-ls} -A"

# Set shell options: http://zsh.sourceforge.net/Doc/Release/Options.html.
setopt glob_dots     # no special treatment for file names with a leading dot
setopt no_auto_menu  # require an extra TAB press to open the completion menu


##--------------- Aliases --------------##
# Navigation
alias l="exa -l --icons --no-user --sort=extension --group-directories-first"
alias ll="exa -la --icons --no-user --sort=extension --group-directories-first"
alias lt="exa -laT --icons --no-user --sort=extension --group-directories-first --level=2"
alias e="exit"
alias k="killall -9"

# Programs
alias x="startx"
alias s="sxiv"
alias m="mpv"
alias v="nvim"
alias sv="sudo nvim"
alias vim="nvim"
alias bt="btop"
alias ht="htop"
alias fm="$HOME/.config/vifm/scripts/vifmrun"
alias lf="lfub"
alias nf="neofetch"
alias pf="pfetch"
alias ytd="yt-dlp"
alias yta="yt-dlp -f 140"
alias ytv1="yt-dlp -f 140+137"
alias ytv2="yt-dlp -f 140+299"
alias yt="ytfzf -t"


# pacman and paru
alias pc='sudo pacman --color auto'
alias pr='paru'
alias pacman='sudo pacman --color auto'
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias clean='sudo pacman -Rns $(pacman -Qtdq)'

# get fastest mirrors
alias mirror="nvim /etc/pacman.d/mirrorlist"
alias mirrorup="sudo reflector --verbose --country 'Bangladesh,India,China,Hong Kong' -l 30 --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist"

# switch between shells
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"

# Transmission cli
alias tl="transmission-remote -l"
alias ta="transmission-remote -a"
alias tt="transmission-remote -t"

# get error messages from journalctl
alias jctl="journalctl -p 3 -xb"

## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Configs
function rc() { du -a $HOME/.config/* | awk '{print $2}' | fzf | xargs -r $EDITOR }
alias bsc='nvim ~/.config/bspwm/bspwmrc'
alias sxc='nvim ~/.config/sxhkd/sxhkdrc'
alias poc='nvim ~/.config/polybar/config.ini'
alias pic='nvim ~/.config/picom/picom.conf'
alias roc='nvim ~/.config/rofi/config.rasi'
alias zrc='nvim ~/.zshrc'
alias vrc='nvim ~/.config/nvim/init.vim'
alias lrc='nvim ~/.config/lf/lfrc'
alias arc='nvim ~/.config/alacritty/alacritty.yml'

# --------------- EOF --------------- #
