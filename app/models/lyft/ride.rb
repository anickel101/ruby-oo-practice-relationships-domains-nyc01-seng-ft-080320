class Ride

    attr_reader :driver, :passenger, :distance

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.count
        self.all.count
    end

    #Get distances of ALL rides. Get count of ALL rides. Average.
    def self.average_distance
        tot_distance = self.all.sum {|ride| ride.distance}
        tot_rides = self.count
        tot_distance / tot_rides
    end


end