# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Shin Wang]

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array
# What is the output? (i.e. What should the code return?) An array of the highest recurring numbers
# What are the steps needed to solve the problem?
# Define mode
# Establish variable as 0 to be used later as highest value
# Iterate over the argument array, then COUNT to see if it is greater than high.
# IF it is, establish as new high value
# Create new empty array
# Iterate over original array, COUNTING  values again to see if they match high.
# IF they do match high, add them to the new array
# Return new array uniquely to eliminate any repeats.


# 1. Initial Solution
def mode (array)
high = 0

array.each do |x| 
 if array.count(x) > high
   high = array.count(x)
 end
end

new_array = []
array.each do |x| 
 if array.count(x) == high
   new_array << x
 end
end
p new_array.uniq

end


# 3. Refactored Solution
def mode (array)
  high = 0

  array.each do |x| 
    if array.count(x) > high
     high = array.count(x)
    end
  end

  new_array = []
  array.each do |x| 
    if array.count(x) == high
    new_array << x
    end
  end
  p new_array.uniq

end


# # 4. Reflection
# Which data structure did you and your pair decide to implement and why?
# We spent about 2 hours working with a hash, because the initial sorting of recurring numbers seemed easy. However, we couldn't figure out a way to extract that data from the hash. Instead, we chose to iterate with some array, and it went smooth and cleanly.
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
# Our original pseudocode kind of crashed and burned, so not really. But as soon as we had a new working concept, the pseudocode was easy to write.
# What issues/successes did you run into when translating your pseudocode to code?
# We ran into a snag with multiple returns on our final array. Hadn't accounted for that at all in the prep stage. After attaching .uniq to the end, it solved our problems.
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# Count was our most trusted method, but we had to use each beforehand to parse it out. It took a minute to break through that point, because count originally was just counting the  length of the array we were given, not the repetition of each value.