node[:deploy].each do |application, deploy|
    deploy = node[:deploy][application];
	appname = deploy[:deploy_to];
	bash "copy_config" do
	  user "root"
	  code <<-EOH
	  cd #{appname}
	  yes | cp -Rf current/OpenVBX/config/specifics/#{appname}/database.php current/OpenVBX/config/
	  yes | cp -Rf current/OpenVBX/config/specifics/#{appname}/openvbx.php current/OpenVBX/config/
	  yes | cp -Rf current/OpenVBX/config/specifics/#{appname}/config.php current/OpenVBX/config/
	  yes | cp -Rf current/OpenVBX/config/specifics/#{appname}/stripe.php current/OpenVBX/config/
	  yes | cp -Rf current/OpenVBX/config/specifics/#{appname}/uno.php current/OpenVBX/config/
	  yes | cp -Rf current/OpenVBX/config/specifics/#{appname}/.htaccess current/
	  chmod -Rf 777 current/*
	  EOH
	end
end

