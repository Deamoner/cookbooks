bash "db_synch" do
  user "root"
  cwd "/srv/www/rms_production"
  code <<-EOH
  mysqldump -u rms -pjfYbLDmq4T3EA4dv -h 107.20.215.51 rms_production_old > /tmp/rms_production_old.sql
  mysqladmin -u pms_dev -pstagingpms123! -h 107.20.215.51 drop pms_dev --force
  mysqladmin -u pms_dev -pstagingpms123! -h 107.20.215.51 create pms_dev --force
  mysql -u pms_dev -pstagingpms123! -h 107.20.215.51 pms_dev < /tmp/rms_production_old.sql
  yes | rm /tmp/rms_production_old.sql
  EOH
end