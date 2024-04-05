#!/usr/bin/env bash

file { 'etc/ssh/ssh_cofig':
  ensure => present,

  content => "
    # ssh configuration
    Host 100.25.48.208
      IdentityFile ~/.ssh/school
      PasswordAuthentication no
      ",
}

