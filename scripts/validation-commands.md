# Authorized validation commands

Run these examples only against systems you own and are authorized to test. Replace documentation-only addresses with your lab targets and record timestamps for correlation.

## Reachability and service checks

```bash
# Expected: HTTPS reverse proxy reachable from USERS
curl -kI https://10.0.20.10/

# Expected: direct database connection blocked from USERS
nc -vz -w 3 10.0.20.20 3306

# Expected: management SSH blocked from an unapproved source
nc -vz -w 3 10.0.40.10 22
```

## OPA policy tests

```bash
opa test policy/ -v
```

For every test, preserve sanitized client output and correlate it with pfSense, Keycloak, application, OPA, Wazuh, or Suricata events as applicable.


