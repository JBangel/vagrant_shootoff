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
end

groups = node['users']['groups']

groups.each do |g|
  group g[:name] do
    action   :create
    members  g[:members]
  end
end
