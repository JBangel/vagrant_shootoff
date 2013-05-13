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
