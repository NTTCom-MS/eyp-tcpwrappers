class tcpwrappers::install inherits tcpwrappers {

  if($tcpwrappers::manage_package)
  {
    package { $tcpwrappers::params::package_name:
      ensure => $tcpwrappers::package_ensure,
    }
  }

}
