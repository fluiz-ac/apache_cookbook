package 'httpd' do
	action :install
end
file '/var/www/html/index.html' do
	content "<h1>Hello World</h1>
	<h2>ipadress: #{node['ipadress']}</h2>
	<h2>hostname: #{node['hostname']}</h2>
"
end
service 'httpd' do
	action [:start, :enable]
end
