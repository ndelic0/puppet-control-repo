##
# A meta profile which encapsulates all the profiles that should probably be
# included on the vast majority of all servers.
#
# In the PROD environment's Hiera YAML file, set
# profile::admintools::ensure: absent
# To ensure that admin tools aren't installed on production servers, but are
# available by default elsewhere.
##

class profile::meta::basic {

  include profile::trustcerts
  include profile::yum
  include profile::ntp
  include profile::admintools

}
