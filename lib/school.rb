class School
  attr_accessor :roster, :student_name, :school_name, :grade
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

 def add_student(student_name, grade)
  if @roster[grade]
    @roster[grade] << student_name
  else
    @roster[grade] = []
    @roster[grade] << student_name
  end
end

def grade(level)
    roster.detect do |x, y| 
      if x == level
        return y 
      end 
    end 
  end 
  
  def sort 
  new_hash = {}
  roster.each do |x, y| 
    new_hash[x] = y.sort 
  end 
  new_hash
end 
  
end 


