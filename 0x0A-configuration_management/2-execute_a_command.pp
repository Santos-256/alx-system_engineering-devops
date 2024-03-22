# This Puppet manifest kills a process named "killmenow"

# Execute the command to kill the process named "killmenow"
exec { 'pkill':
  command  => 'pkill killmenow', # Command to kill the process
  provider => 'shell',  # Use the shell provider
}
