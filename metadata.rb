name             'fcgiwrap'
maintainer       'Alexander Saharchuk'
maintainer_email 'alexander@saharchuk.com'
license          'Apache 2.0'
description      'Installs/Configures fcgiwrap'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.3'

%w{ubuntu centos scientific}.each do |os|
	supports os
end

recipe "fcgiwrap", "Install and configure fcgiwrap"

depends 'build-essential'