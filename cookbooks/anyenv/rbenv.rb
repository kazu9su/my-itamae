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
end
