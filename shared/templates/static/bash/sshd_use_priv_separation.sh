# platform = multi_platform_rhel

# Include source function library.
. $SHARED_REMEDIATION_FUNCTIONS

replace_or_append '/etc/ssh/sshd_config' '^UsePrivilegeSeparation' 'yes' '$CCENUM' '%s %s'
