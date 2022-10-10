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
        if self.age <= 3
            @bark.downcase
        else
            @bark.upcase
        end
    end

    def favorite_foods
        @favorite_foods
    end

    def favorite_food?(food)
        self.favorite_foods.map(&:downcase).include?(food.downcase)
    end
end

# leela = Dog.new("Leela","Lhasa Apso",14,"Woof",["sausage","cAke"])
