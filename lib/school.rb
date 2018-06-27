require 'pry'

class School

  attr_reader :roster




  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    @student = student
    if @roster[grade]
      @roster[grade] << @student
    else
      @roster[grade] = [@student]
    end
  end

  def grade(grade)
    @roster.each do |k, v|
    if k == grade
      return v
     end
    end
   end

   def sort
    @roster.each do |k,v|
      @roster[k] = v.sort
    end
  end
end
