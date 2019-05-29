class tcpwrappers::params {


  case $::osfamily
  {
    'redhat':
    {
      case $::operatingsystemrelease
      {
        /^[5-8].*$/:
        {
          $package_name='tcp_wrappers'
        }
        default: { fail("Unsupported RHEL/CentOS version! - ${::operatingsystemrelease}")  }
      }
    }
    'Debian':
    {
      # case $::operatingsystem
      # {
      #   'Ubuntu':
      #   {
      #     case $::operatingsystemrelease
      #     {
      #       /^1[468].*$/:
      #       {
      #         $package_name='ucspi-tcp'
      #       }
      #       default: { fail("Unsupported Ubuntu version! - ${::operatingsystemrelease}")  }
      #     }
      #   }
      #   'Debian': { fail('Unsupported')  }
      #   default: { fail('Unsupported Debian flavour!')  }
      # }
      fail('Unsupported')
    }
    default: { fail('Unsupported OS!')  }
  }
}
