# Documentation: https://github.com/romkatv/zsh4humans/blob/v5/README.md.
#
# Do not modify this file unless you know exactly what you are doing.
# It is strongly recommended to keep all shell customization and configuration
# (including exported environment variables such as PATH) in ~/.zshrc or in
# files sourced from ~/.zshrc. If you are certain that you must export some
# environment variables in ~/.zshenv, do it where indicated by comments below.

if [ -n "${ZSH_VERSION-}" ]; then
  # If you are certain that you must export some environment variables
  # in ~/.zshenv (see comments at the top!), do it here:
  #
  #   export GOPATH=$HOME/go
  #
  # Do not change anything else in this file.

  : ${ZDOTDIR:=~}
  setopt no_global_rcs
  [[ -o no_interactive && -z "${Z4H_BOOTSTRAPPING-}" ]] && return
  setopt no_rcs
  unset Z4H_BOOTSTRAPPING
fi

Z4H_URL="https://raw.githubusercontent.com/romkatv/zsh4humans/v5"
: "${Z4H:=${XDG_CACHE_HOME:-$HOME/.cache}/zsh4humans/v5}"

umask o-w

if [ ! -e "$Z4H"/z4h.zsh ]; then
  mkdir -p -- "$Z4H" || return
  >&2 printf '\033[33mz4h\033[0m: fetching \033[4mz4h.zsh\033[0m\n'
  if command -v curl >/dev/null 2>&1; then
    curl -fsSL -- "$Z4H_URL"/z4h.zsh >"$Z4H"/z4h.zsh.$$ || return
  elif command -v wget >/dev/null 2>&1; then
    wget -O-   -- "$Z4H_URL"/z4h.zsh >"$Z4H"/z4h.zsh.$$ || return
  else
    >&2 printf '\033[33mz4h\033[0m: please install \033[32mcurl\033[0m or \033[32mwget\033[0m\n'
    return 1
  fi
  mv -- "$Z4H"/z4h.zsh.$$ "$Z4H"/z4h.zsh || return
fi

. "$Z4H"/z4h.zsh || return

##---------- Manpage Colors ----------##
# Start blinking
export LESS_TERMCAP_mb=$(tput bold; tput setaf 2) # green
# Start bold
export LESS_TERMCAP_md=$(tput bold; tput setaf 2) # green
# Start stand out
export LESS_TERMCAP_so=$(tput bold; tput setaf 3) # yellow
# End standout
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
# Start underline
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 1) # red
# End Underline
export LESS_TERMCAP_ue=$(tput sgr0)
# End bold, blinking, standout, underline
export LESS_TERMCAP_me=$(tput sgr0)

setopt rcs
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.emacs.d/bin:$PATH"
export EDITOR="nvim"
export BROWSER="brave" 
export TERMINAL="alacritty" 
export EXA_ICON_SPACING="2" 


export LF_ICONS="\
~/Pictures= :\
~/Music= :\
~/downloads= :\
~/Videos=辶:\
~/Documents= :\
~/dot-files= :\
~/Books=龎:\
~/Code= :\
di= :\
fi= :\
ln= :\
or= :\
ow= :\
ex= :\
*.vimrc= :\
*.viminfo= :\
*.gitignore= :\
*.c= :\
*.cc= :\
*.clj= :\
*.coffee= :\
*.cpp= :\
*.css= :\
*.d= :\
*.dart= :\
*.erl= :\
*.exs= :\
*.fs= :\
*.go= :\
*.h= :\
*.hh= :\
*.hpp= :\
*.hs= :\
*.pro= :\
*.py= :\
*.rb= :\
*.rs= :\
*.scala= :\
*.ts= :\
*.vim= :\
*.cmd= :\
*.ps1= :\
*.sh= :\
*.bash= :\
*.zsh= :\
*.fish= :\
*.tar= :\
*.tgz= :\
*.arc= :\
*.arj= :\
*.taz= :\
*.lha= :\
*.lz4= :\
*.lzh= :\
*.lzma= :\
*.tlz= :\
*.txz= :\
*.tzo= :\
*.t7z= :\
*.zip= :\
*.z= :\
*.dz= :\
*.gz= :\
*.lrz= :\
*.lz= :\
*.lzo= :\
*.xz= :\
*.zst= :\
*.tzst= :\
*.bz2= :\
*.bz= :\
*.tbz= :\
*.tbz2= :\
*.tz= :\
*.deb= :\
*.rpm= :\
*.jar= :\
*.war= :\
*.ear= :\
*.sar= :\
*.rar= :\
*.alz= :\
*.ace= :\
*.zoo= :\
*.cpio= :\
*.7z= :\
*.rz= :\
*.cab= :\
*.wim= :\
*.swm= :\
*.dwm= :\
*.esd= :\
*.jpg= :\
*.jpeg= :\
*.mjpg= :\
*.mjpeg= :\
*.gif= :\
*.bmp= :\
*.pbm= :\
*.pgm= :\
*.ppm= :\
*.tga= :\
*.xbm= :\
*.xpm= :\
*.tif= :\
*.tiff= :\
*.png= :\
*.svg= :\
*.svgz= :\
*.mng= :\
*.pcx= :\
*.mov= :\
*.mpg= :\
*.mpeg= :\
*.m2v= :\
*.mkv= :\
*.webm= :\
*.ogm= :\
*.mp4= :\
*.m4v= :\
*.mp4v= :\
*.vob= :\
*.qt= :\
*.nuv= :\
*.wmv= :\
*.asf= :\
*.rm= :\
*.rmvb= :\
*.flc= :\
*.avi= :\
*.fli= :\
*.flv= :\
*.gl= :\
*.dl= :\
*.xcf= :\
*.xwd= :\
*.yuv= :\
*.cgm= :\
*.emf= :\
*.ogv= :\
*.ogx= :\
*.aac= :\
*.au= :\
*.flac= :\
*.m4a= :\
*.mid= :\
*.midi= :\
*.mka= :\
*.mp3= :\
*.mpc= :\
*.ogg= :\
*.ra= :\
*.wav= :\
*.oga= :\
*.opus= :\
*.spx= :\
*.xspf= :\
*.pdf= :\
*.nix= :\
"
export LF_COLORS="\
~/.local/share=01;31:\
~/.config/lf/lfrc=31:\
.git/=01;32:\
*.gitignore=32:\
*Makefile=32:\
README.*=33:\
*.txt=34:\
*.png=34:\
*.jpg=34:\
*.md=34:\
*.mp3=31:\
*.m4a=36:\
ln=34:\
di=34:\
ex=34:\
"

# Base16 OneDark
_gen_fzf_default_opts() {

local color00='#282c34'
local color01='#353b45'
local color02='#3e4451'
local color03='#545862'
local color04='#565c64'
local color05='#abb2bf'
local color06='#b6bdca'
local color07='#c8ccd4'
local color08='#e06c75'
local color09='#d19a66'
local color0A='#e5c07b'
local color0B='#98c379'
local color0C='#56b6c2'
local color0D='#61afef'
local color0E='#c678dd'
local color0F='#be5046'

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS"\
" --color=bg+:$color01,bg:$color00,spinner:$color0C,hl:$color0D"\
" --color=fg:$color04,header:$color0D,info:$color0A,pointer:$color0C"\
" --color=marker:$color0C,fg+:$color06,prompt:$color0A,hl+:$color0D"

}

_gen_fzf_default_opts
