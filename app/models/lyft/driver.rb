class Driver

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_ride(passenger, distance)
        Ride.new(self, passenger, distance)
    end

    #Selects all the rides that have THIS DRIVER as its driver
    def rides
        Ride.all.select {|ride| ride.driver == self}
    end

    #Of all this driver's rides, pull out the unqiue passenger names
    def passengers
        self.rides.map {|ride| ride.passenger}.uniq
    end

    #Get all the rides of THIS driver, sum the distances.
    def total_distance
        self.rides.sum {|ride| ride.distance}
    end

    #Find all drivers, for each, sum up the distance of all their rides
    #Compare against given float.
    def self.mileage_cap(distance)
        self.all.find_all {|driver| driver.total_distance.to_f > distance}
    end
end
