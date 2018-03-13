#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#install apache
package 'apache2' do
	package_name 'httpd'
	action :upgrade
end
#starting apache
service 'apache2' do
	service_name 'httpd'
	action [:start, :enable]
end



