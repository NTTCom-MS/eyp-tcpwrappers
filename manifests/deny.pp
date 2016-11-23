define tcpwrappers::deny(
                          $daemons,
                          $clients,
                          $description = $name,
                          $order       = '42',
                        ) {
  validate_array($daemons)
  validate_array($clients)

  concat::fragment{ "/etc/hosts.deny ${description}":
    target  => '/etc/hosts.deny',
    order   => $order,
    content => template("${module_name}/entry.erb"),
  }

}
