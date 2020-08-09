class EpisodeCharacter

    attr_reader :episode, :character

    @@all = []

    def initialize(episode, character)
        @episode = episode
        @character = character
        @@all << self
    end

    def self.all
        @@all
    end

end