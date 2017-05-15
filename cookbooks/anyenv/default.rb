directory node[:anyenv][:install_dir] do
  user node[:anyenv][:user]
  action :create
end

git node[:anyenv][:install_dir] do
  user node[:anyenv][:user]
  action :sync
  repository node[:anyenv][:repository]
end

directory File::dirname(node[:anyenv][:shell_profile]) do
  owner node[:anyenv][:user]
  action :create
end

template node[:anyenv][:shell_profile] do
  owner node[:anyenv][:user]
  mode "0755"
  action :create
  source "templates/etc/anyenvrc.erb"
  variables(
    install_dir: node[:anyenv][:install_dir]
  )
end
