# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: integer
# Output: 
# Steps:
# Initialize class
# Insert argumenterror clause if less than 1
# Identify instance variable sides and return if sides is called
# Randomize 1-sides when roll is called


# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("That's not a real amount of sides...")
    end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end

# What is an ArgumentError and why would you use one?
# An ArgumentError is a class ofits own that arises when the input arguments are incorrect or incongruous with the method. You can use one in order to establish parameters that dictate the functionality of whatever object you're creating. A similar random number generator might work fine with negative numbers, but we know a die as a physical object with six sides, so 0 or -30 don't make sense, therefore: ArgumentError.
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# I used ArgumentError.new as well as rand. Both of them worked great and did EXACTLY what I wanted them to. I had to do a little bit of research about how to implement ArgumentError, but it was pretty smooth overall.
# What is a Ruby class?
# A Ruby class is an umbrella that defines a set of objects. There can be many different objects in one class, and that class dictates that they all have similar traits and follow similar rules (including methods). 
# Why would you use a Ruby class?
# You use Ruby classes every time you use Ruby. Objects like Integers and Floats fall into classes, as do Containers like Arrays and Hashes (and Objects and Containers are classes of their own!). Sometimes you need to define your own in order to create something with specific traits that can be reproduced.
# What is the difference between a local variable and an instance variable?
# A local variable is something that is defined and specific to a local scope (ie a method or a program). An instance variable is slightly more permanent, in that it's specific to a class or object. No matter when that class is called, the instance variables come along with it.
# Where can an instance variable be used?
# It can be used within a class.