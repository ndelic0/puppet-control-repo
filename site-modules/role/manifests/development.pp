##
# A role that setups up a basically configured server, and 
# adds development tools on top of that.
##

class role::development {

  include profile::meta::basic
  include profile::meta::development

}
