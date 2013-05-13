require 'fileutils'
require 'pp'

# Install tomcat7
package 'tomcat7' do
  action :install
end

# Move the war file into place
source = node['java-foo']['source-file']
dest   = node['java-foo']['dest-file']

ruby_block 'move sample.war into place' do
  block do
    FileUtils.cp source, dest unless File.exist? dest
  end
end
