# Define PHP settings in the php.ini file.
#
# @example A sample setting
#   include ::php
#
#   ::php::setting { 'PHP/engine':
#     value => 'On',
#   }
#
# @param value
# @param ensure
# @param setting
#
# @see puppet_classes::php ::php
#
# @since 1.0.0
define php::setting (
  String                    $value,
  Enum['present', 'absent'] $ensure  = 'present',
  String                    $setting = $title,
) {

  php_ini_setting { $setting:
    ensure => $ensure,
    value  => $value,
  }
}
