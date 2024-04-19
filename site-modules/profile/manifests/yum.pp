##
# This profile will: 
#  - Ensure all the default, vendor-supplied Yum repositories are removed from /etc/yum.repos.d
#  - Create only those repos which are specified.
#  - Ensure that 'yum clean all', followed by makecache is run whenever repository information is modified.
#  - Ensure that yum repository manipulation precedes any package manipulation.
##
class profile::yum {
  class { 'yum':
    keep_kernel_devel => false,
    clean_old_kernels => false,
    config_options    => {
      my_cachedir => {
        ensure => '/home/waldo/.local/yum/cache',
        key    => 'cachedir',
      },
      gpgcheck    => true,
      debuglevel  => 5,
      assumeyes   => {
        ensure => 'absent',
      },
    },
  }
}
