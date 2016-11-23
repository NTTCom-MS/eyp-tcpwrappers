class tcpwrappers(
                            $manage_package        = true,
                            $package_ensure        = 'installed',
                            $manage_service        = true,
                            $manage_docker_service = true,
                            $service_ensure        = 'running',
                            $service_enable        = true,
                          ) inherits tcpwrappers::params{

  validate_re($package_ensure, [ '^present$', '^installed$', '^absent$', '^purged$', '^held$', '^latest$' ], 'Not a supported package_ensure: present/absent/purged/held/latest')

  class { '::tcpwrappers::install': } ->
  class { '::tcpwrappers::config': } ~>
  class { '::tcpwrappers::service': } ->
  Class['::tcpwrappers']

}