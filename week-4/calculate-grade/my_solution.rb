# Calculate a Grade

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def get_grade(x)
  if x < 60
    return "F"
  elsif x.between?(60, 69)
    return "D"
  elsif x.between?(70, 79)
    return "C"
  elsif x.between?(80, 89)
    return "B"
  elsif x >= 90
    return "A"
  end
end

