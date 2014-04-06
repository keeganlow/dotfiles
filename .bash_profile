# inspired by and borrowed from: https://github.com/mathiasbynens/dotfiles
# source ~/.bashrc

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,git-prompt.sh,functions,extra}; do
    [ -r "$file" ] && source "$file"
done
unset file

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

##
# Your previous /Users/keegan/.bash_profile file was backed up as /Users/keegan/.bash_profile.macports-saved_2012-03-10_at_02:44:37
##

# MacPorts Installer addition on 2012-03-10_at_02:44:37: adding an appropriate PATH variable for use with MacPorts.
# export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# speed up rails env startup: http://stefanwienert.net/blog/2012/07/13/how-to-accelerate-rails-3-starting-up-time-under-ruby-1-dot-9-3/
export RUBY_HEAP_MIN_SLOTS=800000
export RUBY_HEAP_FREE_MIN=100000
export RUBY_HEAP_SLOTS_INCREMENT=300000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=79000000

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# probably not necessary
#if [ -e /usr/share/terminfo/x/xterm-256color ]; then
# NOTE: disabling conditional to see if this is safe across this board
# the xterm-256color needs to be exported for vim color themes to work in tmux
  #export TERM='xterm-256color'
  export TERM='screen-256color'
#else
  #export TERM='xterm-color'
#fi

set editing-mode vi
set keymap vi-command
