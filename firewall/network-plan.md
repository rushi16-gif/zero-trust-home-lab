# Network plan

| VLAN | Name | Subnet |
|---:|---|---|
| 10 | USERS | `10.0.10.0/24` |
| 20 | SERVERS | `10.0.20.0/24` |
| 30 | IOT | `10.0.30.0/24` |
| 40 | MANAGEMENT | `10.0.40.0/24` |
| 50 | SECURITY (optional) | `10.0.50.0/24` |

Each network maps to a dedicated VirtualBox adapter or VLAN-backed interface on pfSense. Inter-zone traffic is denied unless an explicit rule permits a required flow.


