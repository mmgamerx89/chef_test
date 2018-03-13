#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#install apache
if node['platform_family'] =="rhel"
	package ='httpd'
elsif node['platform_family'] =="debian"
	package ='apache2'
end

package 'apache2' do
	package_name 'httpd'
	action :upgrade
end
#starting apache
service 'apache2' do
	service_name 'httpd'
	action [:start, :enable]
end



