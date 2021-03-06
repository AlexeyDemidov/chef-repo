package "monit"

service "monit" do
  supports :restart => true, :reload => true
  action [ :enable, :start ]
end

cookbook_file "/etc/default/monit" do
    source "monit"
    owner "root"
    group "root"
    mode 0644
    notifies :restart, resources(:service => "monit")
end

template "/etc/monit/monitrc" do
    source "monitrc.erb"
    owner "root"
    group "root"
    mode 0600
    notifies :restart, resources(:service => "monit")
end

%w{sshd.monitrc munin.monitrc}.each do |file|
    template "/etc/monit/conf.d/#{file}" do
        source "#{file}.erb"
        owner "root"
        group "root"
        mode 0600
        notifies :restart, resources(:service => "monit")
    end
end

