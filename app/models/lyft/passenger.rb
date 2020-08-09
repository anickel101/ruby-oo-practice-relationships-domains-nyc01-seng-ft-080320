class Passenger

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    #Passenger can create a ride, given a driver and a distance.
    def new_ride(driver, distance)
        Ride.new(driver, self, distance)
    end

    #Selects all the rides that have THIS Passenger as its passenger.
    def rides
        Ride.all.select {|ride| ride.passenger == self}
    end

    #Get all the unique driver names from all this passenger's rides.
    def drivers
        self.rides.map {|ride| ride.driver}.uniq
    end

    #Get all the rides of THIS passenger, sum the distances
    def total_distance
        self.rides.sum {|ride| ride.distance}
    end

    #Of ALL passengers, find the ones who have a total distance > 100
    def self.premium_members
        self.all.find_all {|passenger| passenger.total_distance > 100}
    end

end