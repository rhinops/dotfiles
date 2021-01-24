## set env
#
export LANG=ja_JP.UTF-8


## prompt
#
autoload -Uz colors
colors

PROMPT='[%n@mac]%.$ '
PROMPT2="%{${fg[green]}%}%_> %{${reset_color}%}"
RPROMPT='%*'

# autocomplete
#
autoload -Uz compinit
compinit -u
if [ -e /usr/local/share/zsh-completions ]; then
    fpath=(/usr/local/share/zsh-completions $fpath)
fi


# history
#
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
# setopt hist_ignore_all_dups
setopt share_history
setopt hist_ignore_space
setopt hist_no_store
setopt hist_reduce_blanks
setopt auto_pushd
setopt print_eight_bit # 同時に起動したzshの間でヒストリを共有
setopt interactive_comments # '#' 以降をコメントとして扱う


# options
#
setopt noautoremoveslash
setopt list_packed
setopt list_types
setopt auto_param_keys
setopt auto_param_slash
setopt magic_equal_subst
setopt pushd_ignore_dups


# keybindings
#
bindkey -v # emacs 風キーバインドにする
