include_recipe 'python'

# Set up virtual environment
python_virtualenv "/vagrant/python_foo" do
  interpreter 'python2.7'
  owner       'vagrant'
  group       'vagrant'
  action      :create
  options     '--distribute'
end

execute "Install python_foo requirements" do
    cwd     "/vagrant/python_foo"
    command "/vagrant/python_foo/bin/pip install -r Requirements.txt"
end

template "/etc/init/flask.conf" do
  group   "root"
  owner   "root"
  source  "upstart.erb"
  variables(:venv_path => "/vagrant/python_foo")
end

service "flask" do
  provider Chef::Provider::Service::Upstart
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]
end
