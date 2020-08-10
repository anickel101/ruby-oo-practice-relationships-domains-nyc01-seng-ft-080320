class Location

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def find_trainerlocations
        TrainerLocation.all.select {|tl| tl.location == self}
    end

    def trainers
        self.find_trainerlocations.map {|tl| tl.trainer}
    end

    def self.trainers
        TrainerLocation.all.map {|tl| tl.trainer}.uniq
    end

    def clients #how best to return data? Depends on future use. Let's just say we want an array of clients
        self.trainers.map {|trainer| trainer.clients}.flatten.uniq
    end

    def self.least_clients
        self.all.min_by{|location| location.clients.count}
    end

end