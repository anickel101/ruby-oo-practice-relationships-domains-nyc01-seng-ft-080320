class Actor
    
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    #Finds all Characters whose Actor == self
    def characters
        Character.all.select {|char| char.actor == self}
    end

    #Count the characters played by THIS actor
    def characters_count
        self.characters.count
    end

    #Iterate through ALL characters and find the one with the most characters played
    def self.most_characters
        self.all.max_by {|actor| actor.characters_count}
    end

end