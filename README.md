----
# ansible-role-hashicorp-consul

## Required variables
| Name | Purpose |
| -----| ------- |
| consul_addresses |  List of IP addresses to join the cluster |
| consul_key | key used to secure comms between nodes |

## Default variables
| Name | Value | Purpose |
| -----| ----- | ------- |
| consul_data_dir | /var/consul | where the data lives |
| consul_datacentre | YourUnnamedDataCentre | give your consul datacentre a proper name |
| consul_etc_dir | /etc/consul.d | where the config lives |
| consul_format | zip | used to form the name of the archive to download |
| consul_state | started | state of the consul service |
| consul_version | 1.6.0 | version to download |

****
