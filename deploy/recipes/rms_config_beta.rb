bash "copy_config_beta" do
  user "root"
  cwd "/srv/www/rms_beta"
  code <<-EOH
  sh deploy-beta.sh
  EOH
end