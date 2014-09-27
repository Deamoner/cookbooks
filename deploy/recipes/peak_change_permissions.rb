node[:deploy].each do |application, deploy|
    deploy = node[:deploy][application];
	appname = deploy[:deploy_to];
	bash "change_permissions" do
	  user "root"
	  code <<-EOH
	  cd /srv/www/#{appname}
	  chmod -Rf 777 current/*
	  EOH
	end
end