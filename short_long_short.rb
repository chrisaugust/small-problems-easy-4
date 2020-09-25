# Short Long Short
#
# Problem: 
# Write a method that takes two strings as arguments, determines
# the longest of the two, and then returns a concatenation in the 
# following form: short + long + short. Assume the strings are of 
# different lengths.
#
# Examples:
# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"
#
# Data Structures:
# no special structures beyond String data type,
# associated String functions, and control flow code (let's try
# the ternary operator!)
#
# Algorithm:
# 1) call String#length on arguments
# 2) compare lengths using ternary operator
# 3) return short+long+short concatenation 
#
# Code:

def short_long_short(str1, str2)
  str1.length > str2.length ? (str2 + str1 + str2) : (str1 + str2 + str1)
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
