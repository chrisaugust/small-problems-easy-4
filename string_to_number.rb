# Convert a String to a Number
#
# Problem
# Assuming all characters are numeric, write a method that 
# takes a string of digits andt returns the appropriate 
# number as an integer, without using built-in ruby methods for
# string to integer conversion.
#
# Examples
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570
#
# Data Structures
# array to hold characters in input string
#
# Algorithm
# 1) split string into an array of characters
# 2) initialize empty array for integer conversions
# 3) iterate over character array
# 4) use regular expressions to match string characters to
#    integer replacements, adding to integer array
# 5) join the elements in integer array into a single integer;
#    return this integer
#
# Code

def string_to_integer(input_str)
  char_array = input_str.split('')
  # p char_array

  int_array = []
  
  for char in char_array
    case char
    when '1'
      int_array << 1
    when '2'
      int_array << 2
    when '3'
      int_array << 3
    when '4'
      int_array << 4
    when '5'
      int_array << 5
    when '6'
      int_array << 6
    when '7'
      int_array << 7
    when '8'
      int_array << 8
    when '9'
      int_array << 9
    when '0'
      int_array << 0
    end
    # p int_array
  end

  # join the elements of int_array into a single integer
  # using a mathematical construction:
  #   (10**idx)*num  
  
  converted_int = 0
  int_array.reverse!
  int_array.each_with_index { |num, idx| converted_int += (10**idx) * num  }
  
  # p converted_int
  return converted_int
end

puts "Tests for String to Number"
puts "--------------------------"
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
