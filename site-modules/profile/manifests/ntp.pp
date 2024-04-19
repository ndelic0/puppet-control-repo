##
# Default time setup.
#
# @PARAM $timezone - Set via hiera if desired.  (Default: Europe/Berlin).
# @PARAM $ensure   - Generic puppet ensure var. (Default: present).
# @PARAM $servers  - Array of NTP source servers. (Default: rhel values)
##

class profile::ntp (
  String[1]                 $timezone = 'Europe/Berlin',
  Enum['present', 'absent'] $ensure   = 'present',
  Array[String[1]]          $servers = ['0.rhel.pool.ntp.org', '1.rhel.pool.ntp.org', '2.rhel.pool.ntp.org']
){
  #
  class { 'timezone':
    timezone => $timezone,
  }

  #
  class { 'ntp':
    package_ensure => $ensure,
    servers        => $servers,
    iburst_enable  => true,
  }
}
