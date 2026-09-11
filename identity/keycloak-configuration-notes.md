# Keycloak configuration notes

- Use a dedicated lab realm and separate ordinary and administrative accounts.
- Integrate the protected application as an OpenID Connect client.
- Require TOTP MFA for interactive access.
- Map application roles such as `user` and `admin` into tokens consumed by the enforcement layer.
- Send authentication and administrative events to centralized monitoring.
- Keep client secrets, signing keys, MFA seeds, recovery codes, cookies, tokens, and realm exports containing secrets out of this repository.
- Publish only placeholders such as `.env.example` when configuration examples are needed.


