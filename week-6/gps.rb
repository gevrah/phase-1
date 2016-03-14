# Your Names
# 1)Leland Meiners
# 2)Scott Southard

# We spent 1.5 hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" => 5, "pie" => 7}
   
  if !library.key?(item_to_make)
  raise ArgumentError.new("We don't make #{item_to_make}")
  end

  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size

  if remaining_ingredients == 0
  return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
   
  elsif remaining_ingredients >= 7
  return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, make yourself #{remaining_ingredients / 7} pie. "
   
  elsif remaining_ingredients >= 5
  return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, make yourself #{remaining_ingredients / 5} cake. "
   
  else
  return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, make yourself #{remaining_ingredients} cookies. "
  end
end

p serving_size_calc("pie", 13)
p serving_size_calc("pie", 70)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 11)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

# Reflection
What did you learn about making code readable by working on this challenge?
This was a very helpful exercise in objectively looking at code. I know that mine can get a little laberynthine at times, and taking a step back to evaluate some of the convoluted methods in play and trying to refactor that down to something cleaner and more readable is super helpful!
Did you learn any new methods? What did you learn about them?
I didn't learn any new methods, but we employed some that I don't normally use, like key? to see if the argument matched with any keys.
What did you learn about accessing data in hashes? 
I learned that it's as easy as calling #key? or hash[]!
What concepts were solidified when working through this challenge?
Nothing in particular was solidified, but a lot of basic ideas were reinforced, especially with regards to navigating hashes. Those two methods in particular helped a lot.