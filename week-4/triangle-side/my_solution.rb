# I worked on this challenge Traci Fong.


# Your Solution Below

def valid_triangle?(a, b, c)

  if a + b > c
    return true
  elsif b + c > a
    return true
  elsif a + c > b
    return true
  else
    return false
  end
end