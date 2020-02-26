# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
brandon = Lifter.new("Brandon", 600, "24 Hour Fitness")
mike = Lifter.new("Mike", 700, "TruFit")
steve = Lifter.new("Steve", 850, "TruFit")

twenty_four_hour_fitness = Gym.new("24 Hour Fitnes")
planet_fitness = Gym.new("Planet Fitness")
trufit = Gym.new("TruFit")

membership1 = Membership.new(20, brandon, trufit)
membership2 = Membership.new(25, brandon, twenty_four_hour_fitness)
membership2 = Membership.new(20, steve, trufit)
membership2 = Membership.new(25, mike, planet_fitness)

brandon.memberships
binding.pry
puts "Gains!"
