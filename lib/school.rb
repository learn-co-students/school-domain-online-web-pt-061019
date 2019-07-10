class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster.key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster = @roster.each { |grade, name| @roster[grade].sort! }
  end

  def upgrade(student_name)
    grade = nil
    @roster.each do |k, v|
      if @roster[k].include?(student_name)
        grade = k
      end
    end
    @roster[grade].delete_if { |student| student == student_name }
    grade += 1
    add_student(student_name, grade)
  end
end