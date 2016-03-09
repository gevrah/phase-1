# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode
# Define a method called separate_comma that accepts an argument
 
# split argument into individual characters
# Count individual characters in argument by converting it to a string and splitting
# Create Variable (c) that equals number of letters in the string
# Create loop where if c is less than 3, return argument as a string
# Otherwise, establish a count.
# Until it is equal to c divided by 3, add one to the count
# Create a variable that equals count multiplied by -4 (to establish index for comma insertion in array)
# If the string begins with a comma, eliminate it.
# Return array joined and converted to a string with commas included
 

# What is the input? varied numbers
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
def separate_comma(a)
  split_array = a.to_s.split("")
  c = split_array.count
  if c <= 3 
    return a.to_s
  end
    m = 0
  until m == (c/3)
    m += 1
    comma = m * -4
    split_array.insert(comma, ",") 
    
  end
  if split_array.join.to_s.start_with?(",")
    split_array.shift
  end
  return split_array.join.to_s
end



# 2. Refactored Solution
def separate_comma(a)
  split_array = a.to_s.split("")
  c = split_array.count
  if c <= 3 
    return a.to_s
  else
    m = 0
  until m == (c/3)
    comma = (m += 1) * -4
    split_array.insert(comma, ",") 
  end
end
  if split_array.join.to_s.start_with?(",")
    split_array.shift
  end
  return split_array.join.to_s
end




# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# My original process was far simpler than what ended up coming out. I had an idea for a simple count that was a dividend, but it clearly didn't account for any outliers or simple confusion in the argument.
# Was your pseudocode effective in helping you build a successful initial solution?
# It was very effective. I had to rewrite it after running into some problems, but it definitely helped getting things started.
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# Some of the new methods I used were .insert, .split, and .start_with?.  They all had a really important hand in making this code work. The Ruby-Docs were also of utmost importance, giving me the resources necessary to research what to use and how it would work.
# How did you initially iterate through the data structure?
# I originally used an if loop (with until) to get to the .insert method.  
# Do you feel your refactored solution is more readable than your initial solution? Why?
# I cleaned up a small amount of unnecessary variables, shortening the code in general. I tried to avoid searching for simple solutions (more tailor made methods). I think there may be a cleaner way to go through this whole process (maybe one that doesn't involve going backwards through the array, consequentially running into some issues), but that would require an entire reworking of the method.