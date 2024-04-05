#!/usr/bin/env bash

file { 'etc/ssh/config':
  ensure => present,

  content => "
    Host 100.25.48.208
      IdentityFile ~/.ssh/school
      PasswordAuthentication no
      ",
}

