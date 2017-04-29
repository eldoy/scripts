#!/usr/bin/env ruby

# Add each command as an alias in aliases.sh
# Define a ruby file with methods that matches the aliases to run in lib

# Short creating a command
def cmd(cmd, *args)
  system("#{cmd} #{args.join(' ')}")
end

# Require all scripts
require_relative 'lib/git'
require_relative 'lib/rerun'
require_relative 'lib/image'

# Run the command
command = ARGV.shift; send(command, ARGV)
begin

rescue
  puts "Unable to process command: #{command}"
ensure
  exit 130
end
