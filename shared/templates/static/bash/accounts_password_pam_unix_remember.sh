# platform = Red Hat Enterprise Linux 6, Red Hat Enterprise Linux 7
. $SHARED_REMEDIATION_FUNCTIONS
populate var_password_pam_unix_remember

if grep -q "remember=" /etc/pam.d/system-auth; then   
	sed -i --follow-symlinks "s/\(^password.*sufficient.*pam_unix.so.*\)\(\(remember *= *\)[^ $]*\)/\1remember=$var_password_pam_unix_remember/" /etc/pam.d/system-auth
else
	sed -i --follow-symlinks "/^password[[:space:]]\+sufficient[[:space:]]\+pam_unix.so/ s/$/ remember=$var_password_pam_unix_remember/" /etc/pam.d/system-auth
fi
