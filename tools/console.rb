# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
Lifter.new("Brandon", 600)
Lifter.new("Mike", 700)
Lifter.new("Steve", 850)
binding.pry

puts "Gains!"
