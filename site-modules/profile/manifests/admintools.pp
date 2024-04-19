##
# A simple class that installs some admin-friendly tooling.
# @PARAM $ensure - Set to 'absent' in order to remove tools.
##

class profile::admintools (
  Enum['present', 'absent'] $ensure      = 'present',
  Boolean                   $skip_docker = true,
){
  package { ['vim-enhanced', 'wget', 'net-tools', 'screen', 'mlocate']:
    ensure => $ensure,
  }
}
