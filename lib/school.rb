require 'pry'

class School


  def initialize(student)
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    @grade = grade
    @student = student
    if @roster.has_key?(@grade)
      @roster[@grade] << @student
    else
      @roster[@grade] = []
      @roster[@grade] << @student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, names_array|
      @roster[grade] = names_array.sort
    end
  end

end
