##
# A meta profile which install all manner of development tools.
##

class profile::meta::development {

  include profile::devtools
  include profile::mock
  include profile::packer

}
