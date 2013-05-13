# Users
adam = { :name => 'adam', :password => '$1$bmpJpNH3$MmDNQDnhdtUeVkdddlr.b1' }
josh = { :name => 'josh', :password => '$1$bmpJpNH3$MmDNQDnhdtUeVkdddlr.b1' }

set[:users][:accounts] = [adam, josh]

# Groups
ops = { :name => 'operations', :members => ['adam', 'josh'] }

set[:users][:groups] = [ops]
