# Leap Years

# I worked on this challenge [by myself, with: Darius].


# Your Solution Below

def leap_year? (x)
  if x % 4 == 0
    if x % 100 == 0 && x % 400 != 0
      return false
    end
  return true
  else
    return false
  end
end