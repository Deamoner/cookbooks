bash "restore_uploads_prod" do
  user "root"
  cwd "/srv/www/rms_production"
  code <<-EOH
  sudo sh -c "sync; echo 3 > /proc/sys/vm/drop_caches"
  chmod -Rf 777 current/assets
  rsync -a backup/temp/uploads/files/ current/assets/uploads/files
  rsync -a backup/temp/uploads/researches/ current/assets/uploads/researches
  rsync -a backup/temp/uploads/resources/ current/assets/uploads/resources
  EOH
end
