class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name= name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end
  
  def grade(students_in_grade)
    roster.detect do |key, value|
      if key == students_in_grade
        return value
      end
    end
  end
  
  def sort 
    hash = {}
    roster.each do |key, value| 
    hash[key] = value.sort 
  end 
  hash
  end
end