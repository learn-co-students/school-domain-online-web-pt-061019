class School
  attr_accessor :name, :roster

  def initialize(roster)
      @roster = {}
  end

  def length
    @roster.length = 0
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    name.each do
      @roster[grade] << name
    end
  end

  def grade(grade)
    roster[grade]
  end
end
