# Good Guess

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def good_guess?(x)
  if 
    x.to_i == 42
    puts "True!"
  else
    puts "False."
  end
end

puts "Guess a number!"
x = gets.chomp

good_guess?(x)