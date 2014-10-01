## List out all the students
## Find the specific student

require 'pry'

class Student

  attr_accessor :name

  @@students = []

  def self.all
    @@students
  end

  # def self.find_by_name(name)
  #   @@students.each do |student|
  #     if student.name == name
  #       return student
  #     end
  #   end
  # end

  def self.find_by_name(name)
    @@students.find { |student| student.name == name }
    
    #same as above method - returns last attr in block
  end

  def initialize(name)
    @name = name
    @@students << self
  end


end

Student.new "Astrid"
Student.new "Jarod"
Student.new "Kevin"
Student.new "Kirt"
Student.new "Thanh"

p Student.find_by_name "Thanh"
