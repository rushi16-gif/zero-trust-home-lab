# Suricata notes

- Place the sensor where it can observe relevant inter-zone traffic without exposing sensitive payloads unnecessarily.
- Enable rules appropriate for reconnaissance, scanning, suspicious connections, and policy violations.
- Forward alerts and useful flow metadata to Wazuh.
- Tune noisy rules against known lab behavior and document every suppression.
- Use inline IPS mode only after validating that failure behavior and rule quality are acceptable.


