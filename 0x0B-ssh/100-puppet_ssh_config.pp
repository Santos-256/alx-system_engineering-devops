#!/usr/bin/env bash

file { 'etc/ssh/ssh_config':
  ensure => present,

  content => "
    Host 100.25.48.208
    # ssh configuration
      IdentityFile ~/.ssh/school
      PasswordAuthentication no
      ",
}

