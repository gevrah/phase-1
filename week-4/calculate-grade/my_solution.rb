# Calculate a Grade

# I worked on this challenge by myself.


# Your Solution Below

def get_grade(x)
  if 
    x.to_i >= 60 && x.to_i <= 69
    return "D"
  elsif
    x.to_i >= 70 && x.to_i <= 79
    return "C"
  elsif
    x.to_i >= 80 && x.to_i <= 89
    return "B"
  elsif
    x.to_i >= 90
    return "A"
  else
    return "F"
  end
end
