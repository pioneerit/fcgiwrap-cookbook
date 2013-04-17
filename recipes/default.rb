#
# Cookbook Name:: fcgiwrap
# Recipe:: default
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

node['fcgiwrap']['pkgs'].each do |pkg|
  package pkg do
    action :install
  end
end

unless platform?("debian", "ubuntu")
  remote_file "/usr/local/src/fcgiwrap.tar.gz" do
    owner "root"
    group "root"
    mode 00644
    source "http://github.com/gnosek/fcgiwrap/tarball/master"
  end

  bash "install fcgiwrap" do
  	user "root"
  	cwd "/usr/local/src"
  	code <<-EOH
  	rm -rf fcgiwrap
  	mkdir fcgiwrap
  	tar -C ./fcgiwrap -xf fcgiwrap.tar.gz
  	mv fcgiwrap/*/* fcgiwrap/
  	cd fcgiwrap
  	autoreconf -i
  	./configure
  	make install
  	spawn-fcgi -u nginx -g nginx -M 0775 -s /var/run/nginx/cgiwrap-dispatch.sock -U nginx -G nginx /usr/local/sbin/fcgiwrap
  	EOH
  end
end
# template "/etc/init.d/fcgiwrap" do
# 	source "fcgiwrap.erb"
# 	owner "root"
# 	group "root"
# 	mode 00644
# 	# variables( :config_var => node[:configs][:config_var] )
# end

