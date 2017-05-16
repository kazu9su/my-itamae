%w{
  build-essential
  clang
  cronolog
  curl
  finger
  libdb-dev
  libevent-dev
  libicu-dev
  libssl-dev
  pkg-config
  libmysqlclient-dev
  libpq-dev
  ctags
  libreadline-dev
}.each do |pkg|
  package pkg do
    action :install
  end
end
