require 'fileutils'

# Install tomcat7
package 'tomcat7' do
  action :install
end

# Move the war file into place
file   = node['java-foo']['filename']
source = node['java-foo']['source-dir']
dest   = node['java-foo']['dest-dir']

ruby_block 'Copy sample.war into place' do
  block do
    FileUtils.cp "#{source}/#{file}", dest unless File.exist? "#{dest}/#{file}"
  end
end
