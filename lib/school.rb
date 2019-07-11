class School

  attr_accessor :roster, :name

  def initialize(name)
    @roster = {}
  end

  def add_student(student, grade)
    if @roster[grade] == nil
      @roster[grade] = [student]
    else
      @roster[grade] << student
    end
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort()
    @roster.map do |key, value|
      value.sort!
  end
  return @roster
end

end
