require 'pry'

class School
  attr_reader :name, :roster, :add_student, :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster.each do |g, n|
      if g == grade
        return n
      end
    end
  end

  def sort
    @roster.each do |g, n|
      n.sort!
    end
  end

end
