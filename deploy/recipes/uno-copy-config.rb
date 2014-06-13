bash "uno_copy_config" do
  user "root"
  cwd "/srv/www/rms_production"
  code <<-EOH
  echo node[:opsworks][:applications][:name] > /tmp/appname
  EOH
end