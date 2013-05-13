include_recipe 'build-essential'
chef_gem 'ruby-shadow'

users = node['users']['accounts']

# Create each user and their home directory
users.each do |u|
  user u.name do
    home      "/home/#{u.name}"
    shell     "/bin/bash"
    password  u.password
    supports  :manage_home => true
  end

  template "/home/#{u.name}/Welcome.txt" do
    group     u.name
    owner     u.name
    source    'welcome.erb'
    variables(
      :username => u.name.capitalize
    )
  end

  directory "/home/#{u.name}/develop" do
    action :create
    owner  u.name
    group  u.name
  end
end

groups = node['users']['groups']

groups.each do |g|
  group g[:name] do
    action   :create
    members  g[:members]
  end
end
