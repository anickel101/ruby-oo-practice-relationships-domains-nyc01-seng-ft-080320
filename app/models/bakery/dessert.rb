class Dessert

    attr_reader :name
    attr_accessor :bakery

    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        dis = DessertIngredient.all.select {|di| di.dessert == self}
        dis.map {|di| di.ingredient}
    end

    def calories
        self.ingredients.sum {|ingredient| ingredient.calories}
    end

end
