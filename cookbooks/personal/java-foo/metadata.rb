name              "java-foo"
maintainer        "Joshua Bangel"
maintainer_email  "falornan@gmail.com"
description       "Installs/configures the required components for java-foo"
version           "1.0.0"

%w{ ubuntu }.each do |os|
  supports os
end
