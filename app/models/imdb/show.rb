class Show

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    #Finds all ShowCharacters that are connected to THIS show.
    #Maps through selected ShowCharacters to find Characters in THIS show.
    def characters
        show_chars = ShowCharacter.all.select {|show_char| show_char.show == self}
        show_chars.map {|show_char| show_char.character}
    end

    #Finds chars in THIS show, maps the char's actor into new array.
    def actors
        self.characters.map {|char| char.actor}.uniq
    end

    #Iterates through all MOVIES and finds the ones that have the same name as THIS show.
    def on_the_big_screen
        Movie.all.select {|movie| movie.name == self.name}
    end
end