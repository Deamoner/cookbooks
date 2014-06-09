bash "restore_uploads_prod" do
  user "root"
  cwd "/srv/www/rms_production"
  code <<-EOH
  yes | cp -Rf backup/temp/uploads current/assets/
  EOH
end