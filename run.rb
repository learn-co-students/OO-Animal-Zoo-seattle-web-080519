require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

sfzoo = Zoo.new("SF Zoo", "San Francisco")
woodland = Zoo.new("Woodland Park", "Seattle")
bronx = Zoo.new("Bronx Zoo", "NYC")

a1 = Animal.new("fox", 15, "mr. fox", sfzoo)
aa = Animal.new("fox", 24, "sal", sfzoo)
a2 = Animal.new("eagle", 19, "samson", woodland)
a3 = Animal.new("polar bear", 300, "ronny", bronx)


binding.pry
puts "done"
