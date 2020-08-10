class Client

    attr_reader :name
    attr_accessor :trainer

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def assign_trainer(trainer)
        self.trainer = trainer
    end

    def stop_going_to_gym
        self.trainer = nil
    end

    def locations
        self.trainer.locations
    end
    
end