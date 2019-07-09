class School

  attr_accessor :roster, :name

  # def roster
  #   @roster
  # end

  def initialize(school_name)
    @roster = {}
    @name = school_name
  end

  def add_student(student_name, grade)
    # if @roster[grade] == nil
    #   @roster[grade] = [student_name]
    # else
    #   @roster[grade] << student_name
    # end

    # using or-equal operator
    # @roster[grade] ||= []
    # @roster[grade] << student_name

    # using ternary
    @roster[grade] ? @roster[grade] << student_name : @roster[grade] = [student_name]
  end

  def grade(num)
    roster[num]
  end

  def sort
    # destructive method
    # @roster.each {|key, value| value.sort!}

    #non-destructive
    sorted_hash = {}
    @roster.each {|grade, names| sorted_hash[grade] = names.sort}
    sorted_hash
    # @roster.map {|grade, names| names.sort}
  end

end
