bash "uno_copy_config" do
  user "root"
  	command "echo node[:opsworks][:applications][:name] > /tmp/appname"
end