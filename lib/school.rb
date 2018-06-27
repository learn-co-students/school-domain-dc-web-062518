require 'pry'

class School
  def initialize(name)
    @school_name = name
    @roster = {}
  end
  
  def roster 
    @roster
  end
  
  def add_student(name, grade)
    @studen_name = name
    @grade = grade
    if @roster == {}
      @roster[grade] = [name]
    else
      found = false
      @roster.each do |g, n|
        if g == grade
          @roster[g] << name
          found = true
        end
      end
      if found == false
        @roster[grade] = [name]
      end
    end
    
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    
    @roster.each do |grade, name|
    @roster[grade] = name.sort  
    end
  end
end


