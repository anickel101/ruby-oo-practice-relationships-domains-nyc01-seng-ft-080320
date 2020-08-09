class Character

    attr_reader :name, :actor

    @@all = []

    def initialize(name, actor)
        @actor = actor
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def shows_appeared
        ShowCharacter.all.select {|show_char| show_char.character == self}
    end

    def shows_count
        self.shows_appeared.count
    end

    def movies_appeared
        MovieCharacter.all.select {|mov_char| mov_char.character == self}
    end

    def movies_count
        self.movies_appeared.count
    end

    def total_appearances
        self.movies_count + self.shows_count
    end

    def self.most_appearances
        self.all.max_by {|char| char.total_appearances}
    end

end