require 'pry'

class School
  attr_accessor :name, :roster

    def initialize(name)
      @name=name
      @roster={}
    end

    def add_student(student,level)
      roster[level] ||=[]
      roster[level] << student
    end

    def grade(level)
      roster.detect do |x, y|
        if x == level
          return y
        end
      end
    end

    def sort
      sort_students = {}
        roster.each do |x,y|
          sort_students[x] = y.sort
        end
    sort_students
    end
end
