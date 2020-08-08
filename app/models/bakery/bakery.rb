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


    #return an array of ingredient objects for the bakery's desserts
    def ingredients
        self.desserts.map {|dessert| dessert.ingredients}
    end

    #find all the desserts made by this bakery
    def desserts
        Dessert.all.select {|dessert| dessert.bakery == self}
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
        self.ingredients.map {|ingredient| ingredient.name}
    end

end
