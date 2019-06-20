# code here!
class School
  attr_accessor :name, :roster, :student, :grade

    def intialize(name)
      @name = name
      @roster = {}
    end
    
    def add_student(name, grade)
      @roster[grade] ||= []
      @roster[grade] << student
    end
  
    def grade(grade)
     @grade
    end
  
    def sort
      strings = @roster
    end

end