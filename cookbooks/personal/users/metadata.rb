name              "users"
maintainer        "Joshua Bangel"
maintainer_email  "falornan@gmail.com"
description       "Configures user accounts"
version           "1.0.0"

depends           "build-essential"

%w{ ubuntu }.each do |os|
  supports os
end
