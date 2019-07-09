class School

  attr_accessor :roster, :name

  def initialize(school_name)
    @name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    #using or-equal operator
    @roster[grade] ||= []
    @roster[grade] << student_name

    #using if-conditional
    #if @roster[grade] == nil
    #  @roster[grade] = [student_name]
    #else
    #  @roster[grade] << student_name
    #end

    #using ternary
    # @roster[grade] ? @roster[grade] << student_name : @roster[grade] = [student_name]
  end

  def grade(grade)
    @roster[grade]

    # roster[grade] will also work b/c roster calls the roster getter created by
    # attr_accessor :roster which returns @roster

  end

  def sort
    #non-destructive method
    sorted = {}
    @roster.map {|grade, students|
      sorted[grade] = students.sort
    }
    sorted

    #destructive method
    #roster.each do |grade, names|
    #  names.sort!
    #end
  end

end
