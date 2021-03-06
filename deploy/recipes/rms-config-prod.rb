bash "copy_config_prod" do
  user "root"
  cwd "/srv/www/rms_production"
  code <<-EOH
  yes | cp -Rf current/application/config/specifics/prod/database.php current/application/config/
  yes | cp -Rf current/application/config/specifics/prod/config.php current/application/config/
  chmod -Rf 777 current/
  EOH
end