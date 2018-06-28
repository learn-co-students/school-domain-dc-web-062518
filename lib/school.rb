# code here!
require 'pry'
class School

  attr_accessor :name, :roster




  def initialize(name)
    @name = name
    @roster ={}
  end

def add_student(name, grade)
  if roster.has_key?(grade)
    roster[grade]<< name
  else
      roster[grade] = []
      roster[grade]<< name
  end
end

def grade(grade)
  roster[grade]
end

def sort
  roster.each_value { |v| v.sort! }

end




end
