class tcpwrappers (
                    $manage_package        = true,
                    $package_ensure        = 'installed',
                    $manage_service        = true,
                    $manage_docker_service = true,
                    $service_ensure        = 'running',
                    $service_enable        = true,
                    $hosts_allow_filemode  = '0444',
                    $hosts_deny_filemode   = '0444',
                  ) inherits tcpwrappers::params{

  class { '::tcpwrappers::install': } ->
  class { '::tcpwrappers::config': } ->
  Class['::tcpwrappers']

}
