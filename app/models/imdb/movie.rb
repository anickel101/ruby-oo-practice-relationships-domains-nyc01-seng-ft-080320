class Movie

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    #Finds all MovieCharacters that are connected to THIS movie.
    #Maps through selected MovieCharacters to find Characters in THIS movie.
    def characters
        mov_chars = MovieCharacter.all.select {|mov_char| mov_char.movie == self}
        mov_chars.map {|mov_char| mov_char.character}
    end

    #Finds chars in THIS movie, maps the char's actor into new array.
    def actors
        self.characters.map {|char| char.actor}.uniq
    end

    #Of ALL movies, find the one who has the highest character count
    def self.most_actors
        self.all.max_by {|movie| movie.characters.count}
    end

end
