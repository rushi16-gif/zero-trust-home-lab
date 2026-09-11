package homelab.authz

default allow := false

allow if {
    input.resource == "web-app"
    input.role in {"user", "admin"}
    input.mfa == true
    input.device_trusted == true
    input.source_zone == "user"
}

allow if {
    input.resource == "ssh-management"
    input.role == "admin"
    input.mfa == true
    input.device_trusted == true
    input.source_zone == "management"
}


