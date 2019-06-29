# code here!

class School
  attr_reader :school_name, :roster
  

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def add_student(name, grade)
    # if roster[grade] already exists, leave alone; else, set roster[grade] = []
    @roster[grade] ||= []
    
    # adding more students to roster
    @roster[grade] << name
    
    # if roster[grade].include?(grade)
    #   @roster[grade] << name
    # else
    #   @roster[grade] = [] << name
    # end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each {|grade, students| students.sort!}
  end

end
