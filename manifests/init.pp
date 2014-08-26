class bash($home, $owner, $thegroup) {
    file { "${home}/.bashrc":
        ensure => present,
        source => "puppet:///modules/bash/bashrc",
        owner => "${owner}",
        group => "${thegroup}"
    }
}