class School

  attr_accessor :name, :roster
  
  def initialize(name)
    @roster = {}
  end

def add_student(student, grade)
  if @roster.has_key?(grade) #we are looking to see if roster has a key of grade
    @roster[grade] << student #if so, shove the student name into the hash
  else
    @roster[grade] = [student] #else, make a grade => student hash
 end
end

def grade(grade)
  @roster[grade]
end

def sort 
  self.roster.each do |grade, students|
    students.sort!
  end
end
 
 
end 