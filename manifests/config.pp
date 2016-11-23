class tcpwrappers::config inherits tcpwrappers {

  concat { '/etc/hosts.allow':
    ensure => 'present',
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }

  concat::fragment{ '/etc/hosts.allow header':
    target  => '/etc/hosts.allow',
    order   => '01',
    content => template("${module_name}/headerallow.erb"),
  }

  concat { '/etc/hosts.deny':
    ensure => 'present',
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }

  concat::fragment{ '/etc/hosts.deny header':
    target  => '/etc/hosts.deny',
    order   => '01',
    content => template("${module_name}/headerdeny.erb"),
  }

}
