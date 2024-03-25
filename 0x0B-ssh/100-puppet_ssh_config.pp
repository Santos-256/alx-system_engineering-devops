#!/usr/bin/env bash

file { '/home/ubuntu/.ssh/config':
  ensure => present,
  mode   => '0644',
  owner  => 'ubuntu',
  group  => 'ubuntu',
  content => "
    Host 172.17.0.4
      IdentityFile ~/.ssh/school
      PasswordAuthentication no
  ",
}

