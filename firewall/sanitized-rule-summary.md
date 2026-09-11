# Sanitized pfSense rule summary

Rules are evaluated top-down and end with default deny.

## USERS

- Allow TCP/443 to the protected reverse proxy.
- Allow required DNS and NTP.
- Deny access to the database and management zones.
- Deny remaining protected inter-zone traffic.

## SERVERS

- Allow the application host to the database on TCP/3306.
- Allow required DNS, NTP, and update traffic.
- Deny access to management unless explicitly required.

## IOT

- Allow only required Internet, DNS, and NTP services.
- Deny initiation to user, server, and management zones.

## MANAGEMENT

- Allow approved administrative endpoints to pfSense, Keycloak, Wazuh, and SSH.
- Deny ordinary client sources.

This is a sanitized intent summary, not a raw pfSense export.


