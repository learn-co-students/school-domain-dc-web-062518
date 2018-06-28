require 'pry'

class School

  attr_accessor :roster

  def initialize(roster)
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
    @roster.map do |g, student|
      if g == grade
        return student
      end
    end
  end

  def sort
    a = {}
    @roster.each do |g, student|
      a[g] = student.sort
    end
    a
  end

end

school = School.new("Bayside High School")
school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)
school.roster

# binding.pry
