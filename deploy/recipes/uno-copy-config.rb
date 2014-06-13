bash "uno_copy_config" do
  user "root"
  app_name = node[:opsworks][:applications][:name] 
  command "echo '#{app_name}' > /tmp/appname"
end