class Cat

    @@paws = 7

    def initialize(their_name, their_color, their_age)
        @name = their_name
        @color = their_color
        @age = their_age
        @lives = 7
    end

    def name
      @name
    end
  
    # getter
    def age
        @age
    end

    # setter
    def age=(number)
        @age = number
    end

    # getter for @lives class variable
    def lives
      @lives
    end

    # setter for @lives class variable
    def lives=(deaths)
        @lives = deaths
    end

    # setter for @age class variable
    def birthday
        @age += 1
    end

    def death
        @lives -= 1
    end

end

cat_1 = Cat.new("Sennacy", "brown", 3)
p cat_1.name  # "Sennacy"
p cat_1.age   # 3

cat_2 = Cat.new("Whiskers", "white", 5)
p cat_2.name  # "Whiskers"
p cat_2.age   # 5
# p cat_1 #<Cat:0x007fb6d804cfe0 @age=3, @color="brown", @name="Sennacy">
# p cat_2 #<Cat:0x007fb6d6bb60b8 @age=5, @color="white", @name="Whiskers">
cat_2.age = 3
p cat_2.age 
p cat_2.lives
cat_2.lives -= 2
p cat_2.lives
cat_2.death
p cat_2.lives
cat_2.birthday 
p cat_2.age 