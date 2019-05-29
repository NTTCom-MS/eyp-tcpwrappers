define tcpwrappers::deny(
                          $daemons,
                          $clients,
                          $description = $name,
                          $order       = '42',
                        ) {

  concat::fragment{ "/etc/hosts.deny ${description}":
    target  => '/etc/hosts.deny',
    order   => $order,
    content => template("${module_name}/entry.erb"),
  }
}
