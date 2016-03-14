# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Integer
# Output: High, Low, Correct, True, or False
# Steps:
# Establish answer as an instance variables
# define guess and establish guess as an instance variables
# IF guess higher than the answer, return high, if it is lower, return low, ELSE it is correct
# Defnie solved as instance variables guess and answer being equal


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end 
  
  def guess(guess)
    @guess = guess
    if guess > @answer
      return :high
    elsif guess < @answer
      return :low
    else
      return :correct
    end
  end
  
  def solved?
    if @guess == @answer
      return true
    else
      return false
    end
  
  end
end




# Refactored Solution
# Not sure how much more I could DRY this up. 





# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# Instance variables do a great job of being constant objects that can float from one method to another. It's a bit complicated to wrap your head around initially (especially since local variables can't move at all), but once it makes sense, it's a pretty cool concept that gives you a lot more flexibility.
# # When should you use instance variables? What do they do for you?
# You should use instance variables when creating a class or object. They can become inherent properties of the class and can be used in any methods that need to be defined for that class.
# # Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Flow-control is establishing an order of execution, and making sure each line of code is executed in the correct order. I had a small issue with the instance variables and defining them at the right moment. Defining guess too early shut down my guess method, so it had to be moved until after a guess argument was input.
# # Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# Symbols seems like a more universal return, rather than strings or variables.