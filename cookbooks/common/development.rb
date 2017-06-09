%w{
  apache2-utils
  apt-file
  git
  jq
  ntp
  screen
  sqlite3
  supervisor
  sysstat
  tmux
  tree
  valgrind
  vim
  whois
  zip
  zsh
  libsqlite3-dev
}.each do |pkg|
  package pkg do
    action :install
  end
end

