require "pry"

# code here!
class School

  attr_accessor :name, :roster # Properties of each school instance

  def initialize(name)
    @name = name
    @roster = {} # Note that roster is a hash, not an array
  end

  def add_student(name,grade)

    if roster.has_key?(grade) # If the roster already has a key, with the given grade...
      roster[grade] << name # Then add the student (value) to that grade (key)..
    else
      roster[grade] = [] # Otherwise, create a new key, using that grade...
      roster[grade] << name # And add the student
    end
    
  end

  def grade(grade) # Given a specifc key (grade)...
    roster[grade] # Return all students in that grade
  end

  def sort
    roster.each do |key,value| # For each key, take the value and sort the items in the array
      roster[key].sort! # And replace them in the roster (key order does not matter)
    end
  end
end
