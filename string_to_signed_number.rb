# Convert a String to a Signed Number
#
# Problem
# Same as Convert a String to a Number, but with the addition
# of positive and negative signs
#
# Examples
# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100
#
# Data Structures
# arrays
#
# Algorithm
# 1) split string into chars
# 2) checking first char for pos/neg signs 
# 3) send remaining characters to the
#    string_to_integer() function from previous
#    exercise
# 4) convert to negative number if applicable
# 5) return signed integer
#
# Code

require_relative 'string_to_number'

def string_to_signed_integer(str)

  # split string into characters
  str_arr = str.split('')
  
  # check for pos/neg signs; take them out
  # of the array if found
  negative = false
  if str_arr[0] == '-'
    negative = true
    str_arr.shift
  elsif str[0] == '+'
    str_arr.shift
  end

  stripped_of_sign = str_arr.join('')

  # pass stripped_of_sign to string_to_integer()
  converted_int = string_to_integer(stripped_of_sign)

  # convert sitgn of integer if necessary
  if negative
    converted_int *= -1
  end
  
  # p converted_int
  return converted_int
end

puts "\nTests for String to Signed Number"
puts "---------------------------------"
p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
