class Bootcamp
    def initialize(name,slogan,student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new { |k,v| k[v] = [] }
    end

    def name
        @name
    end
    def slogan
        @slogan
    end
    def teachers
        @teachers
    end
    def students
        @students
    end
    def hire(teacher)
        @teachers << teacher
    end
    def grades
        @grades
    end
    def enroll(student)
        if @students.count < @student_capacity
            @students << student
            true
        else
            false
        end
        
    end
    def enrolled?(student)
        @students.include?(student)
    end

    def student_to_teacher_ratio
        @students.count / @teachers.count
    end

    def add_grade(student,grade)
        if @students.include?(student)
            @grades[student] << grade
            true
        else
            return false
        end
        
    end

    def num_grades(student)
        @grades[student].count
    end

    def average_grade(student)
        return nil if !@students.include?(student)
        if @grades.has_key?(student)
            @grades[student].sum / @grades[student].count
        else
            nil
        end
    end

end

# mapacademy = Bootcamp.new("Map Academy", "Anyone can be a cartographer.", 5)
# p mapacademy

# mapacademy.enroll("Diego")
# p mapacademy.students

# p mapacademy.enrolled?("Diego")
# p mapacademy.enrolled?("James")

# mapacademy.add_grade("Diego", 100)
# mapacademy.add_grade("Diego", 87)

# p mapacademy.grades

# mapacademy.hire("Taylor Musolf")

# p mapacademy.teachers

# p mapacademy.num_grades("Diego")