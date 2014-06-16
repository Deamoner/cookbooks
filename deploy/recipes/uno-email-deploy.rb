bash "email_deploy" do
  user "root"
  code <<-EOH
  echo "Production Deploy" | mail -s "Uno.im AutoDeploy" helpdesk@virtustructure.com
  EOH
end