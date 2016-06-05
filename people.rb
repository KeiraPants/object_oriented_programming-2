#PARENT CLASS that contains the atrribute name
#and an initializer to SET the name
class Person
    attr_accessor :name
    def initialize()
      @name = name
    end

    def greeting
      puts "Hi, my name is #{name}"
    end

end

#Defining student class, and learn method
#A student has the ability to learn
class Student < Person
  def learn
    puts "I get it"
  end
end

#Defining student class, and learn method
#A teacher has the ability to teach
class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object"
  end
end

#Instance of the Instructor named "Chris"
#calling his greeting
chris = Instructor.new
chris.name = "Chris"
chris.greeting

#Instance of the Student named "Christina"
#calling her greeting
christina = Student.new
christina.name = "Christina"
christina.greeting

#Instance of the Instructor named "Chris"
#calling his teach method
chris = Instructor.new
chris.name = "Chris"
chris.teach

#Instance of the Student named "Christina"
#calling her learn method
christina = Student.new
christina.name = "Christina"
christina.learn

#This code doesn't work because Christina
#doesn't have the ability (method) to teach.
#This is because she's only a student,
#she's NOT an Instructor!
christina = Student.new
christina.name = "Christina"
christina.teach
