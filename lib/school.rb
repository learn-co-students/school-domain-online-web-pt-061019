class School
  attr_accessor :name, :roster

  def initialize(name, roster)
    @name = name
    @hash = {}
  end

  def length
    @hash.length = 0
  end

  def roster
    length
  end

  def add_student(name, grade)
    @roster[grade] = []
    @roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end
end
