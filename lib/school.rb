require "pry"

class School
  
  attr_accessor :roster, :student
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  
  
  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    keys = @roster.keys
    keys.each do |key|
      @roster[key] = @roster[key].sort
    end
    @roster
  end
  
end