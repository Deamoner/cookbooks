bash "restore_uploads_prod" do
  user "root"
  cwd "/srv/www/rms_production"
  code <<-EOH
  sudo sh -c "sync; echo 3 > /proc/sys/vm/drop_caches"
  yes | cp -Rf backup/temp/uploads current/assets/
  EOH
end