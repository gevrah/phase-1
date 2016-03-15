#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  

  
  def my_name
    return "Scott"
  end
end


class Greetings
  def initialize 
    @name = NameData.new
  end
  
  
  def hello
    puts "Hello #{@name.my_name}, nice to see you."
  end
end

greet = Greetings.new
greet.hello

# Reflection
# What are these methods doing?
# In release 1, each of the methods is either defining a trait or element of the profile, or it is changing one of those elements
# How are they modifying or returning the value of instance variables?
# They are allowing an argument to be input and pointing the instance variables at that argument, changing their immediate value.

# What changed between the last release and this release?
# The attr_reader :age was added at the top, giving the class an inherent @age variable.
# What was replaced?
# The method for defining age as @age.
# Is this code simpler than the last?
# It is simpler. eliminating unnecessary methods almost always cleans up the code.

# What changed between the last release and this release?
# The attr_writer :age was added, allowing the user to alter the instance variable of the class, rather than simply read it.
# What was replaced?
# The method for change_my_age that allowed a new @age to be input
# Is this code simpler than the last?
# It is much simpler.

What is a reader method?
A reader method is one which cannot alter the original values of the method.
What is a writer method?
A writer method is one which CAN alter the original values, but cannot be read
What do the attr methods do for you?
attr_ methods are great for establishing attributes of a class without having to parse out simple, redundant methods that define instance variables
Should you always use an accessor to cover your bases? Why or why not?
No, there are many times when you don't want information to be changeable or you don't want the user to be able to see it.
What is confusing to you about these methods?
There are times when I'm uncertain about the status of my variables and their scope at a given time. It's gonna take practice!