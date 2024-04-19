##
# A generic docker host, with the most default of configurations.
##
class role::docker {

  include profile::meta::basic
  include profile::docker

}
