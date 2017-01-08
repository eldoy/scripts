#!/usr/bin/env ruby

# Add each command to the bin directory
# Then define a method to run in lib
# #!/bin/sh
# exec ../run.rb command "$@"

# Require all scripts

# Short creating a command
def cmd(cmd, *args)
  system("#{cmd} #{args.join(' ')}")
end

require_relative 'lib/git'

# Run the command
send(ARGV.shift, ARGV)
