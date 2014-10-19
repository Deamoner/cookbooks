node[:deploy].each do |application, deploy|
    deploy = node[:deploy][application];
	appname = deploy[:deploy_to];
	bash "change_permissions" do
	  user "root"
	  code <<-EOH
	  cd /srv/www/#{appname}
	  yes | cp -Rf current/OpenVBX/config/specifics/prod/database.php current/OpenVBX/config/
	  yes | cp -Rf current/OpenVBX/config/specifics/prod/openvbx.php current/OpenVBX/config/
	  yes | cp -Rf current/OpenVBX/config/specifics/prod/config.php current/OpenVBX/config/
	  yes | cp -Rf current/OpenVBX/config/specifics/prod/stripe.php current/OpenVBX/config/
	  yes | cp -Rf current/OpenVBX/config/specifics/prod/uno.php current/OpenVBX/config/
	  yes | cp -Rf current/OpenVBX/config/specifics/prod/.htaccess current/
	  chmod -Rf 777 current/*
	  EOH
	end
end

