class Listing

    attr_reader :city

    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select {|trip| trip.listing == self}
    end

    def trip_count
        self.trips.count
    end

    def guests
        self.trips.map {|trip| trip.guest}
    end

    def self.most_popular
        all_listings = Trip.all.map {|trip| trip.listing}
        binding.pry
        tally_hash = Hash.new 0 #set default value to 0 for all new keys
        all_listings.each do |listing|
            tally_hash[listing] += 1
            end
        #tally_hash = all_listings.tally ## .tally works in 2.7, not 2.6.1
        tally_hash.key(tally_hash.values.max)
    end

    def self.find_all_by_city(city)
        self.all.find_all {|listing| listing.city == city}
    end
        


end