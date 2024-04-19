# @summary A short summary of the purpose of this class
#
# A description of what this class does
# @PARAM - $version ensure set to present
# @PARAM - $cert_files - Array of CA internal certs
#
# @example
#   include profile::trustcerts
class profile::trustcerts (
  String          $version    = 'present',
  Optional[Array] $cert_files = [ 'default.org' ],
) {

  class { 'trusted_ca':
    certificates_version => $version,
  }

  if $cert_files {
    $cert_files.each |String $file| {
      trusted_ca::ca { $file:
        source => "puppet:///modules/profile/trustcerts/${file}.crt",
      }
    }
  }
}
