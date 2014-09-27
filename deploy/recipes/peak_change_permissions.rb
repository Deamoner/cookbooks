appname = node[:deploy]['appshortname'][:application];
bash "change_permissions" do
  user "root"
  code <<-EOH
  cd /srv/www/#{appname}
  chmod -Rf 777 current/*
  EOH
end