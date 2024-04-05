#!/usr/bin/env bash

file { 'etc/ssh/ssh_cofig':
	ensure => present,
content =>"

	 # ssh configuration to a server without typing a password.
	 host*
	 IdentityFile ~/.ssh/school
	 PasswordAuthentication no
	 "
 }
