require 'pry'
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
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]

  end

  def sort
    hash ={}
    @roster.each do |key, val|
      hash[key] = val.sort #sort array name and assign it to new hash
    end
    hash.sort_by{|k,v| k} #sort by key and return array
    hash.to_h #change array to hash
      # binding.pry
  end
end
