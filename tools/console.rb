require_relative '../config/environment.rb'

require 'pry'




def reload
  load 'config/environment.rb'
end

# Airbnb practice info
# bob = Guest.new("Bob")
# peter = Guest.new("Peter")
# paul = Guest.new("Paul")

# new_york_1 = Listing.new("New York")
# new_york_2 = Listing.new("New York")

# chicago_1 = Listing.new("Chicago")
# chicago_2 = Listing.new("Chicago")

# bob.new_trip(new_york_1)
# bob.new_trip(new_york_2)
# bob.new_trip(chicago_1)

# peter.new_trip(chicago_1)

dub_pies = Bakery.new("Dub Pies")
dub_cakes = Bakery.new("Dub Cakes")
dub_bagels = Bakery.new("Dub Bagels")

chocolate = Ingredient.new("chocolate", 75)
flour = Ingredient.new("flour", 150)
sugar = Ingredient.new("sugar", 125)
eggs = Ingredient.new("eggs", 50)
dark_chocolate = Ingredient.new("dark chocolate", 80)

cake_mix = [chocolate, flour, sugar, eggs]
bread_mix = [flour, eggs]
dark_choc_cake_mix = [dark_chocolate, flour, sugar, eggs]





binding.pry
