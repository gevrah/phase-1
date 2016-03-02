# Simple Substrings

# I worked on this challenge by myself.


# Your Solution Below

def welcome(x)
  if x.include? "CA"
    puts "Welcome to California"
  else
    puts "You should move to California"
  end
end

puts "What is your address?"
x = gets.chomp

welcome(x)