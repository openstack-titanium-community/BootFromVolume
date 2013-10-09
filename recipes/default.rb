#
# Cookbook Name:: bootfromvolume
# Recipe:: default
#
# Do not continue if trying to run on platform other than debian
#

if platform_family?("debian")
	
	pathDashboard	= node[:openstack][:dashboard][:dash_path]
	javascriptPath	= node[:openstack][:dashboard][:javascript]

	# Volume template files
	cookbook_file "_create.html" do
		path 	"#{pathDashboard}/dashboards/project/volumes/templates/volumes/_create.html"
		#path	 '/usr/share/openstack-dashboard/openstack_dashboard/dashboards/project/volumes/templates/volumes/_create.html'
		action   :create
	end

	cookbook_file '_detail_overview.html' do
	  path	 "#{pathDashboard}/dashboards/project/volumes/templates/volumes/_detail_overview.html"
	  #path	 '/usr/share/openstack-dashboard/openstack_dashboard/dashboards/project/volumes/templates/volumes/_detail_overview.html'
	  action   :create
	end

	# Horizon javascripts
	cookbook_file 'horizon.instances.js' do
	  path 	  "#{javascriptPath}/horizon.instances.js"
	  #path	 '/usr/share/pyshared/horizon/static/horizon/js/horizon.instances.js'
	  action   :create
	end

	# Instance create form
	cookbook_file 'create_instance.py' do
	  path	 "#{pathDashboard}/dashboards/project/instances/workflows/create_instance.py"
	  #path	  '/usr/share/openstack-dashboard/openstack_dashboard/dashboards/project/instances/workflows/create_instance.py'
	  action   :create
	end

	# API files
	cookbook_file 'cinder.py' do
	  path	 "#{node[:openstack][:dashboard][:dash_path]}/api/cinder.py"
	  #path	 '/usr/share/openstack-dashboard/openstack_dashboard/api/cinder.py'
	  action   :create
	end

	# Volume forms
	cookbook_file 'forms.py' do
	  path	 "#{pathDashboard}/dashboards/project/volumes/forms.py"
	 #path	 '/usr/share/openstack-dashboard/openstack_dashboard/dashboards/project/volumes/forms.py'
	 action   :create
	end
end

# Restart apache service
service "apache2" do
  action :restart
end