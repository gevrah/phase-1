# Leap Years

# I worked on this challenge by myself.


# Your Solution Below

def leap_year?(x)
  if (x.to_i % 4) != 0 
   return false
  elsif (x.to_i % 100) != 0
   return true
  elsif (x.to_i % 400) != 0
   return false
  else
   return true
 
  end
end
