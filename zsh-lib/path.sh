# homebrew
export PATH=~/bin:/usr/local/bin:/usr/local/sbin:$PATH

# rbenv
# To use Homebrew's directories rather than ~/.rbenv add to your profile:
# export RBENV_ROOT=/usr/local/var/rbenv
#To enable shims and autocompletion add to your profile:
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
# path for rbenv
export PATH=~/.rbenv/bin:$PATH
# brew install curl-ca-bundle
#export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt

# go
export GOPATH=/Users/zaur/golib
export PATH=$PATH:$GOPATH/bin

# nodejs
#export PATH=/usr/local/share/npm/bin:$PATH
#export PATH=/usr/local/lib/node_modules:$PATH

# perlbrew
# source ~/perl5/perlbrew/etc/bashrc

export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

alias mongo.start="mongod run --config /usr/local/etc/mongod.conf"
alias redis.start="redis-server /usr/local/etc/redis.conf"
alias recreate="rake db:drop && rake db:create && rake db:migrate && rake db:test:prepare"
alias pg.start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pg.stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias flushdns="sudo discoveryutil udnsflushcaches"
