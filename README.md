----
# ansible-role-hashicorp-consul

## Required variables
| Name | Type | Purpose |
| -----| ---- | ------- |
| consul_datacentre | string | give your Consul datacentre a proper name |
| consul_key | token | key used to secure comms between nodes |
| consul_servers | list(IPV4) | IP addresses of the Consul server agents |

## Default variables
| Name | Type | Value | Purpose |
| -----| ---- | ----- | ------- |
| consul_acl_default_policy | string | allow | ...or deny |
| consul_acl_dir | UnixPath | `/usr/local/etc/consul` | where ACL policies and intentions are kept (servers only) |
| consul_acl_enabled | Boolean | false ||
| consul_acl_subdirs | list(dict) | see `defaults/main.yml` ||
| consul_enable_ui | Boolean | false ||
| consul_bind_addr | IPV4 | 0.0.0.0 | set to privte IPV4 on metal |
| consul_builds | list(dict) | see `defaults/main.yml` ||
| consul_etc_dir | UnixPath | `/etc/consul` | where the server or client config lives |
| consul_format | string | zip | used to form the name of the archive to download |
| consul_lib_dir | UnixPath | `/var/lib/consul` | where the data lives |
| consul_listener_addr | IPV4 | `127.0.0.1` ||
| consul_listener_port | UnixPort | 8500 ||
| consul_log_dir | UnixPath | `/var/log/consul` | where any logs live |
| consul_nodename | string | inventory hostname | sets the nodename attribute in client nodes |
| consul_role | string | oneOf(client,server) ||
| consul_state | string | started | state of the consul service |
| consul_username | UnixUsername | consul ||
| consul_version | string | `defaults/main.yml` | version to run |

## Role Dependencies
- `ansible-role-hashicorp-common`

****
