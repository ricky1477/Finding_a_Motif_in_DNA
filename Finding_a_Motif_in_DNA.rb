#!/usr/bin/env ruby

# Obtain file contents
file_content = ARGV[0]

# Place file content in file variable
file = File.open(file_content, "r")

# Read file contents and place it inside variable
content = file.read

# Place strings in array one element per line
dna_strings = content.split(/\r?\n/)

dna_string =  dna_strings[0]
dna_substring =  dna_strings[1]

puts dna_string
puts dna_substring

indexes = Array.new
j = dna_string.index(dna_substring, 0)
#puts j

while j != nil
  indexes << j+1 if j != nil
  j = dna_string.index( dna_substring, j+1 )
  #puts j if j != nil
end

puts indexes.inspect
indexes.each { |x| print x.to_s + " " }
puts "\n"
