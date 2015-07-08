bash "db_synch" do
  user "root"
  cwd "/srv/www/rms_production"
  code <<-EOH
  mysqldump -u rms -pjfYbLDmq4T3EA4dv -h 54.86.199.105 rms_production_old > /tmp/rms_production_old.sql
  mysqladmin -u pms_dev -pstagingpms123! -h 54.86.199.105 drop pms_dev --force
  mysqladmin -u pms_dev -pstagingpms123! -h 54.86.199.105 create pms_dev --force
  mysql -u pms_dev -pstagingpms123! -h 54.86.199.105 pms_dev < /tmp/rms_production_old.sql
  yes | rm /tmp/rms_production_old.sql
  EOH
end