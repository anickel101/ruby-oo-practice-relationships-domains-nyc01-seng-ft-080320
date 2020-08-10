require_relative '../config/environment.rb'

require 'pry'

def reload
  load 'config/environment.rb'
end


#Gym testing

bob = Client.new("Bob")
larry = Client.new("Larry")
deb = Client.new("Deb")

rock = Trainer.new("Rock")
arnold = Trainer.new("Ahnold")

first_ave = Location.new("1st Ave Gym")
fifth_street = Location.new("5th Street Gym")

bob.assign_trainer(rock)
larry.assign_trainer(rock)
deb.assign_trainer(arnold)

rock.join_location(first_ave)
rock.join_location(fifth_street)
arnold.join_location(first_ave)



binding.pry


# #Crowdfunding testing
# bob = User.new("Bob")
# larry = User.new("Larry")
# deb = User.new("Deb")

# bob_project = bob.create_project("Bob's Project", 500)
# larry_project = larry.create_project("Larry's Project", 100)

# larry.make_pledge(bob_project, 300)
# deb.make_pledge(bob_project, 200)

# #IMDB testing
# nick = Actor.new("Nicholas Cage")
# sean = Actor.new("Sean Connery")
# john = Actor.new("John Travolta")
# ed = Actor.new("Ed Harris")

# #Shows
# awesome_show = {
#   :title => "Home Movies",
#   :actors => {
#     nick => "Dude",
#     sean => "Older Dude",
#     ed => "Old Dude"
#   }
# }

# def new_show(hash)
#   show = Show.new(hash[:title])
#   hash[:actors].each do |actor, role|
#     char = Character.new(role, actor) 
#     ShowCharacter.new(show, char)
#   end
#   show
# end

# new_show(awesome_show)


#Movies
# rock_hash = {
#   :title => "The Rock",
#   :actors => {
#     nick => "Chemist",
#     sean => "Badass",
#     ed => "General"
#   }
# }

# faceoff_hash = {
#   :title => "Faceoff",
#   :actors => {
#     nick => "Face One",
#     john => "Face Two"
#   }
# }

# def new_movie(movie_hash)
#   movie = Movie.new(movie_hash[:title])
#   movie_hash[:actors].each do |actor, role|
#     char = Character.new(role, actor) 
#     MovieCharacter.new(movie, char)
#   end
#   movie
# end

#rock = new_movie(rock_hash)
#faceoff = new_movie(faceoff_hash)























#Lyft testing
# peggy = Driver.new("Peggy")
# sue = Passenger.new("Sue")
# bob = Passenger.new("Bob")
# billy = Driver.new("Billy")

# peggy.new_ride(sue, 100)
# peggy.new_ride(sue, 200)

# bob.new_ride(billy, 50)
# bob.new_ride(peggy, 25)



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


#Lyft testing
# dub_pies = Bakery.new("Dub Pies")
# dub_cakes = Bakery.new("Dub Cakes")
# dub_bagels = Bakery.new("Dub Bagels")

# chocolate = Ingredient.new("chocolate", 75)
# flour = Ingredient.new("flour", 150)
# sugar = Ingredient.new("sugar", 125)
# eggs = Ingredient.new("eggs", 50)
# dark_chocolate = Ingredient.new("dark chocolate", 80)

# cake_mix = [chocolate, flour, sugar, eggs]
# bread_mix = [flour, eggs]
# dark_choc_cake_mix = [dark_chocolate, flour, sugar, eggs]






