#!/usr/bin/env ruby

# Regex that mathec only capital letters

puts ARGV[0].scan(/[A-Z]*/).join
