#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
# Install apache package

if node['platform_family'] == "rhel"   		# evaluates the node to see if it is rhel
	package = "httpd"			# sets the variable package to httpd
elseif node node['platform_family'] == "debian"	# evaluates the node to see if it is debian
	package = "apache2"			# sets the variable package to apache2
end

package 'apache2' do
	package_name package			# sets the package_name installs either httpd or apache2 depending on family name 
	action :install
end

service 'apache2' do
	service_name 'httpd'
	action [:start, :enable]
end

