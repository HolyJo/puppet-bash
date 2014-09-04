class bash($home, $owner, $thegroup, $env_descriptor) {
    file { "${home}/.bashrc":
        ensure => present,
        content => template('bash/bashrc.erb'),
        owner => "${owner}",
        group => "${thegroup}"
    }
}