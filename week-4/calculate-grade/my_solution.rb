# Calculate a Grade

# I worked on this challenge by myself.


# Your Solution Below

def get_grade(x)
  if 
    x.to_i >= 60 && x.to_i <= 69
    puts "D"
  elsif
    x.to_i >= 70 && x.to_i <= 79
    puts "C"
  elsif
    x.to_i >= 80 && x.to_i <= 89
    puts "B"
  elsif
    x.to_i >= 90
    puts "A"
  else
    puts "F"
  end
end


puts "What is your grade?"

x = gets.chomp

get_grade(x)

