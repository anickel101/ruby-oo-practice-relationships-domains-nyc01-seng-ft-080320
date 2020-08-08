class Dessert

    attr_reader :name, :ingredients
    attr_accessor :bakery

    @@all = []

    def initialize(name, ingredients)
        @ingredients = ingredients
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def calories
        self.ingredients.sum {|ingredient| ingredient.calories}
    end

end
