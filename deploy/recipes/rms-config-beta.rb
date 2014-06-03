bash "copy_config_beta" do
  user "root"
  cwd "/srv/www/rms_beta"
  code <<-EOH
  yes | cp -Rf current/application/config/specifics/beta/database.php current/application/config/
  yes | cp -Rf current/application/config/specifics/beta/config.php current/application/config/
  chmod -Rf 777 current/
  EOH
end