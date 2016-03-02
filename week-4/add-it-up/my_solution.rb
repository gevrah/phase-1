# Add it up!

# Write a method total which takes an Array of numbers and calculates the sum of all the numbers. 
# The code should work as follows:
#    total([1,2,3])      # => 6
#    total([4.5, 0, -1]) # => 3.5
#    total([-100, 100])  # => 0

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Esther Leytush.

# 0. total Pseudocode
#   method accepts an array 
#   sum = 0
#   create counter, set to 0
#   while counter is less than the length of the array,
#   current item is item in the array at location of counter 
#   sum adds current item 
#   counter adds one to itself 
#   loop ends by itself when counter is 1 less than the length of the array
#   return the sum


# Input:
# Output:
# Steps to solve the problem.

# 1. total initial solution

def total(array)
 sum = 0
 i = 0
 
 while i < array.length 
   current = array[i]
   sum += current 
   i += 1
 end 
 
 sum 
end

# 3. total refactored solution

def total(array)
 sum = 0
 array.each {|item| sum += item}  
 sum 
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.

# create sentence variable, set it equal to an empty string 
# create counter, set it equal to 0
# while counter is less than the length of the array 
# current word is the word at counter location in array 
# current word is turned into a string (just in case)
# sentence adds a space and then the current word 
# counter is incremented by one 
# loop finishes by itself when counter == length of array 
# return sentence plus a period


# 5. sentence_maker initial solution

def sentence_maker(array)
 sentence = ""
 i = 0 
 while i < array.length 
   word = array[i].to_s
   word = word.capitalize if i == 0
   sentence += word + " " 
   i += 1 
 end 
 sentence.strip + "."
end

# 6. sentence_maker refactored solution

def sentence_maker(array)
  array = array.map{|word| word.to_s}
  array[0] = array[0].capitalize
  array.join(" ") + "."
end