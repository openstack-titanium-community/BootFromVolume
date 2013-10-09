Boot from Volume Cookbook
=======================
Cookbook to update openstack horizon with UI changes to permit instances to boot from volume. This change is applicable to the pulled OpenStack Grizzly version used in Crowbar mesa 1.6. Please note this code base is not based on the stable release of OpenStack Grizzly.
https://github.com/crowbar/crowbar/wiki


Requirements
------------
Boot from volume cookbook currently only works on the debian platform and is dependent on openstack horizon https://github.com/openstack-titanium-community/Dashboard

Attributes
----------
The attributes define the directory path for which the boot from volume require to copy the files over.

default[:openstack][:dashboard][:dash_path] = "/usr/share/openstack-dashboard/openstack_dashboard"
default[:openstack][:dashboard][:javascript] = "/usr/share/pyshared/horizon/static/horizon/js"


Usage
-----
#### bootfromvolume::default
To inlcude include `bootfromvolume` to your node add it to the node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[bootfromvolume]"
  ]
}
```