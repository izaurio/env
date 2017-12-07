# startup
umask 002
echo
touch ~/.hushlogin
uname -mnrs
uptime
for i in `users`; do echo $i; done|uniq|xargs
echo

# homebrew
export PATH=~/bin:/usr/local/bin:/usr/local/sbin:$PATH

# go
export GOPATH=/Users/zaur/go
export PATH=$PATH:$GOPATH/bin

# nodejs
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=/usr/local/lib/node_modules:$PATH
# old node
export PATH="/usr/local/opt/node@6/bin:$PATH"

# perlbrew
source ~/perl5/perlbrew/etc/bashrc

# plenv
if which plenv > /dev/null; then eval "$(plenv init - zsh)"; fi
export PATH="$HOME/.plenv/bin:$PATH"

# rbenv
# To use Homebrew's directories rather than ~/.rbenv add to your profile:
# export RBENV_ROOT=/usr/local/var/rbenv
#To enable shims and autocompletion add to your profile:
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
# path for rbenv
export PATH=~/.rbenv/bin:$PATH
# brew install curl-ca-bundle
#export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export BUNDLE_GITHUB__COM=FOOBAR:x-oauth-basic

# java
export JAVA_HOME=`/usr/libexec/java_home -v 1.9`
export PATH=${JAVA_HOME}/bin:$PATH

# locale
export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# theme
export TERM=xterm-256color

# pure zsh promt
autoload -U promptinit; promptinit
prompt pure

# zsh completions
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -U compinit
compinit

# aliases
alias redis.start="redis-server /usr/local/etc/redis.conf"
alias redis.stop="redis-cli shutdown"
alias pg.start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pg.stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias flushdns="sudo discoveryutil udnsflushcaches"
