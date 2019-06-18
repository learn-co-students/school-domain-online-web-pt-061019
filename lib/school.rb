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
    roster.detect do |a, b|
      if a == students_in_grade
        return b
      end
    end
  end
  
  def sort 
    hash = {}
    roster.each do |a, b| 
    hash[a] = b.sort 
  end 
  hash
  end
end