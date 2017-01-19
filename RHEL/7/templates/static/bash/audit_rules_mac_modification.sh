# platform = Red Hat Enterprise Linux 7

# Include source function library.
. $SHARED_REMEDIATION_FUNCTIONS

# Perform the remediation for both possible tools: 'auditctl' and 'augenrules'
fix_audit_watch_rule "auditctl" "/etc/selinux/" "wa" "MAC-policy"
fix_audit_watch_rule "augenrules" "/etc/selinux/" "wa" "MAC-policy"
