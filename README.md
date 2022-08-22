----
# ansible-role-hashicorp-consul

## Required variables
| Name | Type | Purpose |
| -----| ---- | ------- |
| consul_datacentre | string | give your Consul datacentre a proper name |
| consul_key | token | key used to secure comms between nodes |
| consul_servers | list(IPv4) | list of IP addresses to join the cluster |

## Default variables
| Name | Type | Value | Purpose |
| -----| ---- | ----- | ------- |
| consul_enable_ui | Boolean | false ||
| consul_builds | list(dict) | see below | decides which versions of the binary to install |
| consul_etc_dir | UnixPath | /etc/consul | where the server or client config lives |
| consul_format | string | zip | used to form the name of the archive to download |
| consul_lib_dir | UnixPath | /var/lib/consul | where the data lives |
| consul_log_dir | UnixPath | /var/log/consul | where any logs live |
| consul_role | string | oneOF(client,server) ||
| consul_state | string | started | state of the consul service |
| consul_version | 1.12.4 | version to run |
```
consul_builds:
- {version: '1.12.0', state: present}
- {version: '1.12.4', state: present}
```

## Role Dependencies
- `ansible-role-hashicorp-common`

****
