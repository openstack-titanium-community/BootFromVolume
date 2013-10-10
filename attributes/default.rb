#
# Cookbook Name:: bootfromvolume
# Attributes:: default
#

default[:openstack][:dashboard][:dash_path] = "/usr/share/openstack-dashboard/openstack_dashboard"
default[:openstack][:dashboard][:javascript] = "/usr/share/pyshared/horizon/static/horizon/js"
default[:openstack][:manage] = "/usr/share/openstack-dashboard"
default[:openstack][:dashboard][:localSetting] = "/etc/openstack-dashboard/"