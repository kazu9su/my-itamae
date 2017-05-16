execute "Install rbenv" do
  user node[:anyenv][:user]
  command <<-CMD
    . #{node[:anyenv][:shell_profile]};
    anyenv install rbenv
  CMD
  not_if "test -e #{node[:anyenv][:install_dir]}/envs/rbenv"
end

execute "Install Ruby #{node[:rbenv][:version]}" do
  user node[:anyenv][:user]
  command <<-CMD
    . #{node[:anyenv][:shell_profile]};
    rbenv install #{node[:rbenv][:version]}
  CMD
  not_if "test -e #{node[:anyenv][:install_dir]}/envs/rbenv/versions/#{node[:rbenv][:version]}"
end

execute "Set Ruby #{node[:rbenv][:version]} as default" do
  user node[:anyenv][:user]
  command <<-CMD
    . #{node[:anyenv][:shell_profile]};
    rbenv global #{node[:rbenv][:version]}
  CMD
end
