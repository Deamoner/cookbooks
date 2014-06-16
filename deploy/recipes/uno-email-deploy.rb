appname = node[:opsworks][:applications][i][:name];
bash "email_deploy" do
  user "root"
  code <<-EOH
  echo "#{appname} Deploy" | mail -s "Uno.im AutoDeploy" helpdesk@virtustructure.com
  EOH
end