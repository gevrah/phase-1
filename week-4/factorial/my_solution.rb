# Factorial

# I worked on this challenge with Esther Leytus


# Your Solution Below


# Pseudocode
# We will write code that will be a loop, multiplying 
# from the original variable by decreasing integers until we've reached 1. 



def factorial(number)
  return 1 if number == 0
  product = number
  i = number - 1
  
  while i > 0 
    product = product * i  
    i -= 1

  end
  product
  
end


#Here's our additional solution to the problem!
def factorial(number)
  return 1 if number == 0
  (1..number).to_a.inject{|sum, x| sum *= x}
end
