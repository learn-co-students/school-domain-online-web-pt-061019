class School
  attr_accessor :roster
  def initialize(school_name)
    @name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    #only happens when roster at key is empty
    if roster[grade].nil?
      roster[grade] = []
    end
    #always happens when add_student is called
    roster[grade] << student_name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    @roster.each do |key,value|
      value.sort!
    end
  end
  end



# code here!
