# Convert a Signed Number to a String
#
# Problem
# Same as previous but with the addition of positive
# and negative signs
#
# Examples
# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'
#
# Data Structures
# arrays for looping over and converting strings to ints
# 
# Algorithm
# 1) check if number is positive or negative; 
#    set negative = true if negative value
# 2) convert to positive value and send to integer_to_string()
# 3) add negative and positive signs
# 4) return string
#   
#
# Code

require_relative 'num_to_string'

def signed_integer_to_string(int)
  negative = true if int < 0
  
  # convert to positive value
  if negative
    int *= -1
  end
  
  # use method from last exercise to convert to str
  int_as_str = integer_to_string(int)

  if negative
    return '-' + int_as_str  
  elsif int_as_str == '0'
    return int_as_str
  else
    return '+' + int_as_str
  end
end 

puts "\nTests for Convert a Signed Number to a String"
puts "-----------------------------------------------"
p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
