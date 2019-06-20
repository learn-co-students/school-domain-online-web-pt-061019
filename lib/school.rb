# code here!
class School
  attr_accessor :name, :roster

    def intialize(name)
      @name = name
      @roster = {}
    end

    def add_student(name, grade)
      @roster[grade] ||= []
      @roster[grade] << student
    end

# ||= if condition is true, create this array

# from SG:
# def add_student(name, grade)
#   if roster.has_keys?(grade) or roster[grade]
#     roster[grade] << name
#   else
#     roster[grade] = [name]
#   end
# end

    def grade(grade)
     @grade
    end

    def sort
      sorted={}
      roster.each do |grade, name|
        sorted[grade] = name.sort
      end
      sorted
    end

end
