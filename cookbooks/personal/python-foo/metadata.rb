name              "python-foo"
maintainer        "Joshua Bangel"
maintainer_email  "falornan@gmail.com"
description       "Installs/configures the required components for the python-foo application"
version           "1.0.0"

depends           "python"

%w{ ubuntu }.each do |os|
  supports os
end
