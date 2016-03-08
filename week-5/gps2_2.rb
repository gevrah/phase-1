# # Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Define a method that accepts an argument 
  # Split string into smaller strings divided by space
  # Define a hash
  # key value pair = ingredient => quantity
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash


# Method to add an item to a list
# input: method_name(item, quantity*)
# steps:
  # Define method that accepts two arguments
  # Take two arguments and insert it as a key => value into list hash
# output: existing grocery list (hash)


# Method to remove an item from the list
# input: method_name(item)
# steps:
  # Define method that accepts one argument
  # Take one argument and remove it, removing key => value pair from hash
# output: existing grocery list (hash)


# Method to update the quantity of an item
# input: method_name(item, quantity)
# steps:
  # Define a method that accepts two arguments
  # Take second argument and use it to update the first argument's corresponding key.
# output: existing grocery list (hash)


# Method to print a list and make it look pretty
# input: method_name(hash)
# steps:
  # Define a method (called print) that prints all of the key => value pairs
# output: print to screen key, value pairs.
#

def create_list(grocery_string)
  grocery_list = {}
  grocery_string.split.each do |item|
    grocery_list[item] = 1
  end
  print(grocery_list)
  return grocery_list
end

def add_item(list, item, qty=1)
  list[item] = qty
  print(list)
end

def remove_item(list, item)
  list.delete(item)
  print(list)
end

def update_qty(list, item, qty)
  list[item] = qty
  print(list)
end

def print(list)
  list.each_pair do |item, qty|
    puts "#{item} #{qty}"
  end
  puts " "
end




list = create_list("apples pears milk bread")
add_item(list, "Lemonade", 2)
add_item(list, "Tomatoes", 3)
add_item(list, "Onions", 1)
add_item(list, "Ice Cream", 4)
remove_item(list, "Lemonade")
update_qty(list, "Ice Cream", 1)


# # What did you learn about pseudocode from working on this challenge?
# This challenge, more than any so far, really displayed how helpful GOOD pseudocode can be in laying out a method. It was very worthwhile to thoughtfully write pseudocode with vague Ruby concepts in mind, and then simply impliment them.
# # What are the tradeoffs of using Arrays and Hashes for this challenge?
# Arrays are a bit cleaner to work with, in general, but using hashes for most of this stuff made the most sense. Since we're dealing with items and quantities, I think using arrays would have to be so much more complicated rather than a hash, which seems tailor made for something like a grocery list.
# # What does a method return?
# A method returns the result of the last action it performed. It doesn't display the return, it just stores it temporarily.
# # What kind of things can you pass into methods as arguments?
# Pretty much any object. Strings, integers, variables, etc.
# # How can you pass information between methods?
# One of the ways we figured was to create a variable outside of the method and to call that within each method. That way there is consistency and nothing gets stuck inside a method.
# # What concepts were solidified in this challenge, and what concepts are still confusing?
# I'm just learning how to assert Ruby more and more each time I go through an exercise. Figuring out the format of a method and what tools I could be using has been really tough (I look at an assignment with a blank stare a lot), but more and more, I'm realizing the sets of methods, objects, and classes laid out by this language and trying my best to implement them!