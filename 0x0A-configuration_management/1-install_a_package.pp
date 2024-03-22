#!/usr/bin/pup
# The above line is a shebang that specifies the interpreter to execute the script.

# Install an especific version of flask (2.1.0)
package {'flask': # This declares a package resource named 'flask'.
  ensure   => '2.1.0', # Ensure that Flask version 2.1.0 is installed.
  provider => 'pip3' # Use pip3 as the package provider to install Flask.
}
