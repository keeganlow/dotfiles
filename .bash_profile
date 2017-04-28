# inspired by and borrowed from: https://github.com/mathiasbynens/dotfiles
# source ~/.bashrc

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,git-prompt.sh,functions,extra}; do
    [ -r "$file" ] && source "$file" && echo "sourced $file"
done
unset file

# TODO: this should split across appropriately named *.local files
source ~/.sensitive

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
    shopt -s "$option" 2> /dev/null
done

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall

# if possible, add tab completion for many more commands
[ -f /etc/bash_completion ] && source /etc/bash_completion

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if hash rbenv 2>/dev/null; then
  eval "$(rbenv init -)"
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export TERM='screen-256color'

set editing-mode vi
set keymap vi-command

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# make fzf ctrl-r working in neovim term https://github.com/junegunn/fzf/issues/809
[ -n "$NVIM_LISTEN_ADDRESS" ] && export FZF_DEFAULT_OPTS='--no-height'
