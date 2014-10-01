require 'pry'

#ORDER OF A CLASS
#class methods
#initialize
#instance methods
#private methods


class Panda

  @@pandas = [] #a class instance to create an array to hold all pandas

  def self.all #OR Panda.all within the class
      @@pandas #exposes the instance to the outside world of class
  end

  def kill #pa
    @alive = false
  end

  def self.kill_all
    @@pandas.each do |panda|
      panda.kill
    end
  end

  def initialize(name) #New object being created.
    @name = name #set the name
    @alive = true
    @@pandas << self #push each panda into class array in Initialize method
  enf

end

panda_joe = Panda.new "Joe"
panda_mary = Panda.new "Mary"
panda_jill = Panda.new "Jill"
panda_josh = Panda.new "Josh"

p Panda.all

puts "killing the pandas"
Panda.kill_all

p Panda.all

puts "----------"
p "panda_joe #{panda_joe.inspect}"
puts "----------"
