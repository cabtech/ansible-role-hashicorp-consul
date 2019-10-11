----
# ansible-role-hashicorp-consul

## Required variables
| Name | Purpose |
| -----| ------- |
| consul_addresses | list of IP addresses to join the cluster |
| consul_datacentre | give your consul datacentre a proper name |
| consul_key | key used to secure comms between nodes |

## Default variables
| Name | Value | Purpose |
| -----| ----- | ------- |
| consul_etc_dir | /etc/consul | where the server or client config lives |
| consul_format | zip | used to form the name of the archive to download |
| consul_lib_dir | /var/lib/consul | where the data lives |
| consul_log_dir | /var/log/consul | where any logs live |
| consul_role | client | ... or server |
| consul_state | started | state of the consul service |
| consul_version | 1.6.0 | version to download |

****
