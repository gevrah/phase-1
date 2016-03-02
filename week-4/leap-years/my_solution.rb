# Leap Years

# I worked on this challenge by myself.


# Your Solution Below

def leap_year?(x)
  if (x.to_i % 4) != 0 
   puts "Not a leap year."
  elsif (x.to_i % 100) != 0
  puts "It's a leap year!"
  elsif (x.to_i % 400) != 0
  puts "Not a leap year."
  else
  puts "It's a leap year!"
  end
end

puts "What year is it?"
x = gets.chomp
    
leap_year?(x)