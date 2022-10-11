# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array

    def span
        if self.empty?
            nil
        elsif self.all? { |ele| ele.instance_of?(Integer) }
            self.max - self.min
        end
    end

    def average
        if self.empty?
            nil
        elsif self.all? { |ele| ele.instance_of?(Integer) }
            self.sum / (self.count * 1.0)
        end
    end

    def median
        if self.empty?
            nil
        elsif !self.count.even?
            self.sort[self.count/2]
        elsif self.count.even?
            length = self.count
            (self.sort[length/2] + self.sort[(length/2)-1] * 1.0) / 2
        end
    end

    def counts
        count = Hash.new(0)
        self.each{|ele| count[ele] += 1}
        count
    end

    def my_count(element)
        count = Hash.new(0)
        self.each{|ele| count[ele] += 1}
        count[element]
    end

    def my_index(element)
        self.each_with_index { |ele,i| return i if ele == element }
        return nil
    end

    def my_uniq
        hash = Hash.new(0)
        uniques = []
        self.each do |ele|
            if !hash.has_key?(ele)
                hash[ele] += 1
                uniques << ele
            end
                
        end
        uniques
        # hash.keys <= works better
    end

    def my_transpose
        result = Array.new(self[0].count) { Array.new(self.length) }
        self.each_with_index do |array,ai|
            array.each_with_index do |ele,idx| 
                result[idx][ai] = ele
            end
        end
        result
    end

end

# p [3,4,5,17,7,8,18].span
# p [].span

# p [5, 0, 2, 6, 11, 10, 9].median # 6
# p [5, 10, 9].median # 9
# p [3, 8, 4, 5].median # 4.5
# p [10, 23].median # 16.5

# p ["a", "b", "a", "b", "b", "c"].counts

# p ["a", "b", "a", "a", "b"].my_count("a")
# p ["a", "b", "b", "b", "b"].my_count("b")

# p ["a", "b", "a", "b", "b", "c"].index("a")

# p ["a", "b", "a", "a", "b"].my_uniq