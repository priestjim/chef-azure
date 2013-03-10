name             "azure"
maintainer       "Panagiotis Papadomitsos"
maintainer_email "pj@ezgr.net"
license          "Apache 2.0"
description      "Installs and configures Windows Azure support for Linux VMs"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          IO.read(File.join(File.dirname(__FILE__), 'VERSION')).chomp rescue '0.1.0'

recipe 'azure', 'Installs and configures Windows Azure support for Linux VMs and provides an OHAI plugin'

%w{ ubuntu debian centos redhat amazon scientific oracle fedora }.each do |os|
  supports os
end

depends 'ohai', '>= 1.1.4'
