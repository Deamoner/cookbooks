node[:deploy].each do |application, deploy|
    deploy = node[:deploy][application];
	appname = deploy[:deploy_to];
	bash "change_permissions" do
	  user "root"
	  code <<-EOH
	  echo "#{appname} Deploy" | mail -s "Uno.im AutoDeploy" helpdesk@virtustructure.com
	  EOH
	end
end