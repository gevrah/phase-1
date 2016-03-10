

# Pseudocode
# Create an array to house groups
# SLICE argument into arrays of 3, placing each into the original array
# IF there is an array that's less than 3, SLICE argument into arrays of 4, placing each into the original array.
# IF there is still an array that's less than 3, SLICE argument into arrays of 4, placing each into the original array.

# Initial Solution

def group(people)

cohort_groups = []
people.each_slice(3) {|group| cohort_groups << group}
p cohort_groups
end

# # Refactored solution 1

def group(people)

cohort_groups = []

people.each_slice(3) {|group| cohort_groups << group}
cohort_groups.each do |group|
  if group.length < 3
    cohort_groups.clear
    people.each_slice(4) {|group| cohort_groups << group}
  end
  if group.length < 3
    cohort_groups.clear
    people.each_slice(5) {|group| cohort_groups << group}
  end
end
p cohort_groups
end

# Refactored solution 2

def group(people)

cohort_groups = []

people.shuffle.each_slice(3) {|group| cohort_groups << group}
cohort_groups.each do |group|
  if group.length < 3
    cohort_groups.clear
    people.shuffle.each_slice(4) {|group| cohort_groups << group}
  end
  if group.length < 3
    cohort_groups.clear
    people.shuffle.each_slice(5) {|group| cohort_groups << group}
  end
end
p cohort_groups
end

# What was the most interesting and most difficult part of this challenge?
# This was kind of a fun challenge. The most interesting and difficult part was trying to find different ways to deal with the remainder folks after splitting everyone into groups. Don't want anyone to feel left out!
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# Sometimes I feel very good about it, while others require some testing first. Either way, it's a helpful tool that always is beneficial to kickstarting the process.
# Was your approach for automating this task a good solution? What could have made it even better?
# I think it was a very solid solution. I spent a large amount of time trying to refactor the method into something that would re-distribute any outliers into the earlier groups, but couldn't quite get it to work in a way that made sense.
# What data structure did you decide to store the accountability groups in and why?
# I originally started with a hash, because of the key => value concept being comparable to a group with a name. Then I realized that wasn't entirely necessary and scrapped it for a much simpler array approach.
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# I did learn a bunch. I messed around with delete, push, and pop, and then settled on clear and shuffle, both of which worked exactly how I wanted them to. Super fun methods.