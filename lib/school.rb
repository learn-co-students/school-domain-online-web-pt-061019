class School 
  attr_accessor :name, :roster 
  
def initialize(name) 
  @name = name 
  @roster = {}
end 

def add_student(students_name, grade)
  roster[grade] ||= []
  roster[grade] << students_name
end 
  
def grade(student_grade)
  roster[student_grade]
end

def sort
  roster_sort = {}
  roster.each do |grade, students|
   roster_sort[grade] = students.sort
 end 
 roster_sort
end

end 