class Ingredient

    attr_reader :name, :calories

    @@all = []

    def initialize(name, calories)
        @name = name
        @calories = calories
        @@all << self
    end

    def self.all
        @@all
    end

    #return all desserts that use this ingredient
    def desserts
        dis = DesertIngredient.all.select {|di| di.ingredient == self}
        dis.map {|di| di.dessert}.uniq
    end

    #return all bakeries that use this ingredient
    def bakeries
        self.desserts.select {|dessert| dessert.bakery}
    end

    #find all ingredients that include the given string. (ie - "chocolate" would yield 
    #"chocoloate chips", "dark chocolate", etc)
    def self.find_all_by_name(ingredient_string)
        self.all.find_all {|ingredient| ingredient.name.include?(ingredient_string)}
    end



end