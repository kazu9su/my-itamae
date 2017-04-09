%w{
  mysql-client-core-5.6
  mysql-client-5.6
  mysql-server-5.6
  mysql-common
}.each do |pkg|
  package pkg
end

template "/etc/mysql/conf.d/mysqld_utf8.cnf" do
  action :create
  source "mysql/templates/mysqld_utf8.cnf.erb"
  mode "0644"
  variables(
    character_set: node[:mysql]["character_set"]
  )
  notifies :restart, "service[mysql]"
end

service "mysql" do
  action [:enable, :restart]
end
