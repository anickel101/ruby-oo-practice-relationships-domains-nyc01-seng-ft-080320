class Bakery

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    #makes a new dessert, assigns itself as the dessert's baker
    def new_dessert(name, ingredient_array)
        dessert = Dessert.new(name, ingredient_array)
        dessert.bakery = self
    end


    def dessert_ingredients
        DessertIngredient.all.select {|di| di.dessert.bakery == self}
    end


    #return an array of ingredient objects for the bakery's desserts
    def ingredients
        self.dessert_ingredients.map {|di| di.ingredient}
    end

    #find all the desserts made by this bakery
    def desserts
        self.dessert_ingredients.map {|di| di.dessert}
    end

    def desserts_count
        self.desserts.count
    end

    #call .ingredients, sum up calories then divide by .desserts.count
    def average_calories
        tot_calories = self.ingredients.sum {ingredient| ingredient.calories}
        tot_calories/self.desserts_count
    end

    #call ingredients, then iterate to map to pull :name to a new array
    def shopping_list
        self.ingredients.map {|i| i.name}.uniq
    end

end
