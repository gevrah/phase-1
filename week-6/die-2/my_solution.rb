# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 1 hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: One string
# Steps:
# RAISE argument error IF nothing is entered
# Make the amount of sides equal to the count of the labels
# Establish the instance variable of labels as equal to the arguement passed in
# Define #sides as the instance variable
# Define #roll as the argument shuffled, choosing the first after shuffling

# Initial Solution

class Die
  def initialize(labels)
    if labels == []
      raise ArgumentError.new("NOPE! Not enough sides")
    end
    @sides = labels.count
    @labels = labels
  end

  def sides
    @sides
  end

  def roll
    
    @labels.shuffle.first
  end
end



# Refactored Solution

class Die
  def initialize(labels)
    raise ArgumentError.new("NOPE! Not enough sides") if labels == []
    @sides = labels.count
    @labels = labels
  end

  def sides
    @sides
  end

  def roll
    @labels.shuffle.first
  end
end

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# The logic in this exercise and the last was very similar. The process was almost exactly the same. The only difference was converting strings, or more accurately, using methods specific to certain object.
# What does this exercise teach you about making code that is easily changeable or modifiable? 
# It can be SUPER helpful to have malleable code.
# What new methods did you learn when working on this challenge, if any?
# I didn't learn any new methods :(
# What concepts about classes were you able to solidify in this challenge?
# It was interesting to try and call #rand on an array and get some really bizarre results. Obviously #shuffle was the right choice. 