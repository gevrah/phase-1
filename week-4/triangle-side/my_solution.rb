# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  if (a.to_i + b.to_i) > c.to_i && (b.to_i + c.to_i) > a.to_i && (a.to_i + c.to_i) > b.to_i
    puts "This is a valid triangle!"
  else
    puts "Not a valid triangle."
  end
end

puts "What is the length of side A?"
a = gets.chomp
puts "What is the length of side B?"
b = gets.chomp
puts "What is the length of side C?"
c = gets.chomp

valid_triangle?(a, b, c)