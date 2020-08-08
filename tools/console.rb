require_relative '../config/environment.rb'

require 'pry'




def reload
  load 'config/environment.rb'
end

bob = Guest.new("Bob")
peter = Guest.new("Peter")
paul = Guest.new("Paul")

new_york_1 = Listing.new("New York")
new_york_2 = Listing.new("New York")

chicago_1 = Listing.new("Chicago")
chicago_2 = Listing.new("Chicago")

bob.new_trip(new_york_1)
bob.new_trip(new_york_2)
bob.new_trip(chicago_1)

peter.new_trip(chicago_1)

binding.pry
