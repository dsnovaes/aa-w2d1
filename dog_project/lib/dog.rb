class Dog
    def initialize(name,breed,age,bark,favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def name
        @name
    end

    def breed
        @breed
    end

    def age
        @age
    end

    def age=(number)
        @age = number
    end

    def bark
        self.age <= 3 ? @bark.downcase : @bark.upcase
    end

    def favorite_foods
        @favorite_foods
    end

    def favorite_food?(food)
        self.favorite_foods.map(&:downcase).include?(food.downcase)
    end
end

# leela = Dog.new("Leela","Lhasa Apso",14,"Woof",["sausage","cAke"])
# teeta = Dog.new("Teeta","Jack Russel",2,"Woooooof",["egg","caKE"])

# p leela.bark
# p teeta.bark
# p leela.favorite_food?("bacon")
# p teeta.favorite_food?("CAKE")