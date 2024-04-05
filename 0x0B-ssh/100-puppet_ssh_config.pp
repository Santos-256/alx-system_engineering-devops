#!/usr/bin/env bash

file { 'etc/ssh/config':
  ensure => present,
  mode   => '0644',
  owner  => 'ubuntu',
  group  => 'ubuntu',
  content => "
    Host 100.25.48.208
      IdentityFile ~/.ssh/school
      PasswordAuthentication no
      ",
}

