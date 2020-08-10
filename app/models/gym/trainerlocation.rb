class TrainerLocation

    attr_accessor :trainer, :location
    @@all = []

    def initialize(trainer, location) #Maybe add a "status" arg here or something, so we can sort for current trainers?
        @trainer = trainer
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

end