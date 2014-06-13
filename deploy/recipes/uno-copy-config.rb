bash "uno_copy_config" do
  user "root"
  if node[:opsworks][:applications][:name] <> 'null' do
  	command "echo 'test' > /tmp/appname"
  end 
end