# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'
gym1 = Gym.new("NYSC")
lifter2 = Lifter.new("Anthony",45)
lifter2 = Lifter.new("Anthony",70)
lifter2 = Lifter.new("Anthony",69)
membership2 = Membership.new(65)
# test code goes here

binding.pry

puts "Gains!"
