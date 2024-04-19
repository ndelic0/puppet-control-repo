##
# A generic 'server', with the most default of configurations.
# 
# This role leverages the 'basic' meta-profile, which is what other
# roles who wish to start from a default 'server' should do.
# 
# Roles cannot include other roles by convention.
##
class role::basic {

  include profile::meta::basic

}
