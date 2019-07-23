class School
  
  def initialize(name)
    @name = name
    @roster= {}
  end
  
  def roster
    @roster
  end
  
  def add_student(name, grade)
    if !@roster.key?(grade)
      @roster[grade] = []
    end
    @roster[grade] << name
  end
  
  def grade(num)
    @roster[num]
  end
  
  def sort
  sort_hash = {}
  @roster.each { |grade, name| 
    sort_hash[grade] = name.sort }
    
    return sort_hash
  end
  
end

hodgesbend= School.new("Hodges bend")
hodgesbend.add_student("Nina Kazz", 9) 
puts hodgesbend.grade(9)