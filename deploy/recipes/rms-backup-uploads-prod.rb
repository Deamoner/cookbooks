bash "backup_uploads_prod" do
  user "root"
  cwd "/srv/www/rms_production"
  code <<-EOH
  yes | cp -Rf current/assets/uploads backup/temp/
  EOH
end