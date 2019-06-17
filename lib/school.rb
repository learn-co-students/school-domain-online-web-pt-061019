class School
  attr_accessor :name, :roster

  def initialize(roster)
      @roster = {}
  end

  def length
    @roster.length = 0
  end

  def add_student(name, grade)
    @roster[grade] = []
    @roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end
end
