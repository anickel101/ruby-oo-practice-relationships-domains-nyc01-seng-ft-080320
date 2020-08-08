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
    def dessert
        Dessert.all.select {|dessert| dessert.ingredients.include?(self)}
    end

    #return all bakeries that use this ingredient
    def bakeries
        self.dessert.select {|dessert| dessert.bakery}
    end

    #find all ingredients that include the given string. (ie - "chocolate" would yield 
    #"chocoloate chips", "dark chocolate", etc)
    def self.find_all_by_name(ingredient)

    end



end