# platform = multi_platform_fedora
. $SHARED_REMEDIATION_FUNCTIONS
declare var_accounts_password_minlen_login_defs
populate var_accounts_password_minlen_login_defs

grep -q ^PASS_MIN_LEN /etc/login.defs && \
sed -i "s/PASS_MIN_LEN.*/PASS_MIN_LEN\t$var_accounts_password_minlen_login_defs/g" /etc/login.defs
if ! [ $? -eq 0 ]
then
  echo -e "PASS_MIN_LEN\t$var_accounts_password_minlen_login_defs" >> /etc/login.defs
fi
