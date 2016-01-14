class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def greeting
    "Hi, my name is #{@name}"
  end
end



class Student < Person
  def learn
    "I get it!"
  end
end

class Instructor < Person
  def teach
    "Everything in Ruby is an Object"
  end
end

chris = Instructor.new("chris")
 p chris.greeting

cristina = Student.new("cristina")
p cristina.greeting

p chris.teach
p cristina.learn

# chris.learn
# cristina.teach

# The above will give an error, this is becuase chris is an instance
# of the Instructor class and cristina is an instance of the Student class
# If you try to call a method on an instance of another class, you will
# get an error saying undefined local variable as they are not able to access
# the methods of another class unless it is inherited from a parent.
