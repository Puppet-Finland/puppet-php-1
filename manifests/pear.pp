# Manage PHP Extension and Application Repository framework.
#
# @example Declaring the class
#   include ::php
#   include ::php::pear
#
# @param package_name
#
# @see puppet_classes::php ::php
#
# @since 1.0.0
class php::pear (
  String $package_name,
) {

  package { $package_name:
    ensure => present,
  }
}
