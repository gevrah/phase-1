puts 'Tell me your first name.'
firstname = gets.chomp
puts 'Tell me your middle name'
middlename = gets.chomp
puts 'Tell me your last name'
lastname = gets.chomp
puts 'Hello ' + firstname + ' ' + middlename + ' ' + lastname + ', you sure look handsome today!'

puts 'Tell me your favorite number.'
number = gets.chomp
bigger = number.to_i + 1
puts 'Oh wow, but ' + bigger.to_s + ' is way better, right?'


# How do you define a local variable?
# A local variable is a variable that is specific to its method. It isn't globally accepted throughout Ruby. It must begin with a lowercase letter or an _.
# How do you define a method?
# Chris Pine's definition of a method as the verb to an object's noun was pretty illuminatory. Thinking of it as an action being performed by an object was very helpful.
# What is the difference between a local variable and a method?
# A local variable is a stand in for an object (or maybe an object and a method) while a method is an action that can be performed on or by that variable or any other object.
# How do you run a ruby program from the command line?
# The simplist way is to type "Ruby [program].rb"
# How do you run an RSpec file from the command line?
# Similarly, "rspec [program].rb"
# What was confusing about this material? What made sense?
# At first I had trouble understanding what I was supposed to be doing (the terminology is still very new and I'm not always sure what I'm being asked to do). But the coding itself mostly makes sense to me. It gets difficult here and there (error messages are a pain!), but for the most part, I get it.