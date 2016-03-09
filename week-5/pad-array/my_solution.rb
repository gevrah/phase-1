# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? an array, 
# What is the output? (i.e. What should the code return?) an array
# What are the steps needed to solve the problem?


# # 1. Initial Solution
# 
# pad (non-destructive)
#define pad with array in, minimum length, pad defaulted to nil
# create variable to determine difference between input and minimum length
# if the difference is greater than 0, 
# create new variable equal to a new array that fills in the extra length in the pad by adding to the input
# if input is the same or greater length print duplicate of original input.

# pad! (destructive)
# pad (non-destructive)
#define pad with array in, minimum length, pad defaulted to nil
# create variable to determine difference between input and minimum length
# if the difference is greater than 0, 
# create new variable equal to a new array that fills in the extra length in the pad by concating with the input
# if input is the same or greater length print original input.



def pad(input_array, output_length, pad = nil)
  new_length = output_length - input_array.length
  
  if new_length > 0
    padded_array = Array.new(new_length, pad)
    output_array = input_array + padded_array
    p output_array
    
  else
    p input_array.dup  
  end
end

def pad!(input_array, output_length, pad = nil)
  new_length = output_length - input_array.length
  
  if new_length > 0
    padded_array = Array.new(new_length, pad)
    input_array.concat(padded_array)
  end
  p input_array
end

# 3. Refactored Solution
def pad(input_array, output_length, pad = nil)
  new_length = output_length - input_array.length
  
  if new_length > 0
    padded_array = Array.new(new_length, pad)
    input_array + padded_array
  else
    p input_array.dup  
  end
end


def pad!(input_array, output_length, pad = nil)
  new_length = output_length - input_array.length
  
  if new_length > 0
    padded_array = Array.new(new_length, pad)
    input_array.concat(padded_array)
  end
  return input_array
end


# 4. Reflection
# Were you successful in breaking the problem down into small steps?
# We were. It took a minute to wrap our heads around what would be the best way to tackle it, but realizing the first small step of getting a difference between min length and input made everything smooth,
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# Yes, we had to change up some things, especially when running into input being equal or greater than the minimum, but it ended up being fine.
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# It was successful for almost all of the tests except the "pad should be non-destructive" test. We spent the majority of our time together working on this failure. In the end, we realized that the objectid numbers of the input and output had to be different, so we couldn't just return the original input. Seems a little convoluted, and I don't know if that's an anticipated problem or just one we ran into. But we used .dup to figure it out in the end.
# When you refactored, did you find any existing methods in Ruby to clean up your code?
# I thought our code was fairly clean, and mostly just cleaned up variables a bit. Didn't add much new code at all.
# How readable is your solution? Did you and your pair choose descriptive variable names?
# It's pretty readable. Didn't realize until the end that there were a few provided variables in the arguments. I think it makes sense though, although I'm not great at being a descriptive writer. Still working on that!
What is the difference between destructive and non-destructive methods in your own words?