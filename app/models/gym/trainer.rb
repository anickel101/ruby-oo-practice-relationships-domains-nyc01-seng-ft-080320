class Trainer

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def clients
        Client.all.select {|client| client.trainer == self}.uniq
    end

    def join_location(location)
        TrainerLocation.new(self, location) 
    end

    def trainer_locations
        TrainerLocation.all.select{|tl| tl.trainer == self}
    end

    def locations
        self.trainer_locations.map {|tl| tl.location}.uniq
    end

    def leave_location(location)
        tl = TrainerLocation.all.find {|tl| tl.location == location}
        tl.trainer = nil
    end
    
    def self.most_clients
        self.all.max_by {|trainer| trainer.clients.count}
    end
end