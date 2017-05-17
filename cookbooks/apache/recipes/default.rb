#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
# installing apache
 
if node['platform_family'] == "rhel"
   pacakge = "httpd"
elsif node['platform_family'] == "debian"
   package = "apache2"
end

Package 'apache2' do
        package_name package
        action :install
end

service 'apache2' do
        service_name 'httpd'
        action [:start, :enable]
end
