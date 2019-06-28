# code here!
class School 
  attr_accessor :model, :roster
  
  def initialize(model)
    @model = model
    @roster = {}
  end
  
  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end
  
  def grade(st_grade)
    roster[st_grade]
  end
  
  def sort 
    sorted = {}
    roster.each do |grade, student|
      sorted[grade] = student.sort 
    end 
    sorted
    end
end