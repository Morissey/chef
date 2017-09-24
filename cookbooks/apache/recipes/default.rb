#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
# Install apache package
package 'apache2' do
	package_name 'httpd'
	action :install
end

service 'apachae2' do
	service_name 'httpd'
	action[:start, :enable]
end
