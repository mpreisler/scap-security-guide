# platform = Mozilla Firefox
. $SHARED_REMEDIATION_FUNCTIONS
populate var_default_home_page

firefox_cfg_setting "stig.cfg" "browser.startup.homepage" "\"${var_default_home_page}\""
