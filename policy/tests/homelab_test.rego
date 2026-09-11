package homelab.authz_test

import data.homelab.authz.allow

test_admin_management_allowed if {
    allow with input as {"role": "admin", "mfa": true, "device_trusted": true, "source_zone": "management", "resource": "ssh-management"}
}

test_untrusted_admin_denied if {
    not allow with input as {"role": "admin", "mfa": true, "device_trusted": false, "source_zone": "management", "resource": "ssh-management"}
}

test_user_web_allowed if {
    allow with input as {"role": "user", "mfa": true, "device_trusted": true, "source_zone": "user", "resource": "web-app"}
}

test_user_without_mfa_denied if {
    not allow with input as {"role": "user", "mfa": false, "device_trusted": true, "source_zone": "user", "resource": "web-app"}
}

test_user_database_denied if {
    not allow with input as {"role": "user", "mfa": true, "device_trusted": true, "source_zone": "user", "resource": "database"}
}


