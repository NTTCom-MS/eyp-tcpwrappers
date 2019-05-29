define tcpwrappers::allow(
                            $daemons,
                            $clients,
                            $description = $name,
                            $order       = '42',
                          ) {

  concat::fragment{ "/etc/hosts.allow ${description}":
    target  => '/etc/hosts.allow',
    order   => $order,
    content => template("${module_name}/entry.erb"),
  }
}
