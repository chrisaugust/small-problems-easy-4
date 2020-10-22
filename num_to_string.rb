# Convert a Number to a String
#
# Problem
# Write a method that takes a positive integer or zero, 
# and converts it to a string.
# No using standard Ruby conversion methods.
#
# Examples
# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'
#
# Data Structures
# just arrays
#
# Algorithm
# 1) determine the number of digits in the integer
#    by dividing by powers of 10 until quotient == 0
# 2) initialize empty array, and push
#    the digits of the number one by one into array
#       - for one's digit, % 10
#       - for ten's digit, % 100
#       - etc.
# 3) iterate through array with case switch structure
#    to match integers to string characters, replacing
#    integers with strings
# 4) join array and return string representation
#
# Code

def integer_to_string(int)
  num_digits = 1
  loop do
    quotient = int / 10**num_digits
    break if quotient == 0
    num_digits += 1
  end
  
  digits_arr = []
  for i in (1..num_digits)
    digits_arr.unshift(int % 10**i/ 10**(i-1))
  end 
  
  digits_arr.each_with_index do |digit, index| 
    if digit == 0
      digits_arr[index] = '0'
    elsif digit == 1
      digits_arr[index] = '1'
    elsif digit == 2
      digits_arr[index] = '2'
    elsif digit == 3
      digits_arr[index] = '3' 
    elsif digit == 4
      digits_arr[index] = '4' 
    elsif digit == 5
      digits_arr[index] = '5'
    elsif digit == 6
      digits_arr[index] = '6'
    elsif digit == 7
      digits_arr[index] = '7'
    elsif digit == 8
      digits_arr[index] = '8'
    elsif digit == 9
      digits_arr[index] = '9'
    end
  end  
  
  string_version =  digits_arr.join('')
  # p string_version
end

puts "\nTests for Convert a Number to a String"
puts "----------------------------------------"
p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
