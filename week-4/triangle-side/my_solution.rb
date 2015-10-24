# I worked on this challenge [by myself, with: Darius].


# Your Solution Below

def valid_triangle?(x, y, z)
  if x <= 0
    return false
    elsif y <= 0
      return false
    elsif z <= 0
      return false
    elsif (x + y <= z)
      return false
    elsif (x + z <= y)
      return false
    elsif (y + z <= x)
      return false
  else
    return true
  end
end