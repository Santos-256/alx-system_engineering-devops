# Setup New Ubuntu server with nginx

# Update the system
exec { 'update system':
  command => '/usr/bin/apt-get update',
}

# Install nginx package
package { 'nginx':
  ensure  => 'installed',
  require => Exec['update system'],
}

# Create a basic index.html file
file { '/var/www/html/index.html':
  content => 'Hello World!',
}

# Set up a redirect in the Nginx configuration
exec { 'redirect_me':
  command  => 'sed -i "24i\	rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;" /etc/nginx/sites-available/default',
  provider => 'shell', # Use shell provider for executing shell commands
  require  => Package['nginx'], # Requires nginx package to be installed first
}

# Ensure nginx service is running
service { 'nginx':
  ensure => 'running',
  require => Package['nginx'], # Requires nginx package to be installed first
}
