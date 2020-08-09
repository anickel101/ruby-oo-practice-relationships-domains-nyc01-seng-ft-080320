class Episode

    attr_reader :name
    attr_accessor :show

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
end