name              "shootoff"
maintainer        "Joshua Bangel"
maintainer_email  "falornan@gmail.com"
description       "Installs/configures the required components for the vagrant shootoff"
version           "1.0.0"

depends           "vim"
depends           "java-foo"
depends           "users"

%w{ ubuntu }.each do |os|
  supports os
end
