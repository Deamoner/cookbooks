bash "backup_uploads_prod" do
  user "root"
  cwd "/srv/www/rms_production"
  code <<-EOH
  sudo sh -c "sync; echo 3 > /proc/sys/vm/drop_caches"
  rsync -a current/assets/uploads/files/ backup/temp/uploads/files
  rsync -a current/assets/uploads/researches/ backup/temp/uploads/researches
  rsyan -a current/assets/uploads/resources/ backup/temp/uploads/resources
  chmod -Rf 777 current/assets
  EOH
end
