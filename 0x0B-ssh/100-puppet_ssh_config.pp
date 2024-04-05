#!/usr/bin/env bash

# cofiguration
file { 'etc/ssh/ssh_config':
        ensure => present,
content =>"

         # ssh client configuration to a server without typing a password.
         host*
         IdentityFile ~/.ssh/school
         PasswordAuthentication no
         ",
 }
