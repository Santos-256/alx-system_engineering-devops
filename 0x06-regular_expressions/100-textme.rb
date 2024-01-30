#!/usr/bin/env ruby

# Extracting data using regex

matches = ARGV[0].scan(/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/)

# Joining the extracted data with ","

result = matches.join(",")

# Printing the result

puts result
