# What century is that?
#
# Problem: 
# Write a method that takes a year as input and returns the century as a 
# string with appropriate ordinal suffix (eg '1st', '2nd', '3rd', '4th' ...)
#
# Examples:
# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'
#
# Data Structures:
# We need a way to map numbers to the correct ordinal suffix.
# Let's use a hash.
# ordinal_hsh = { 1: 'st', 2: 'nd', 3: 'rd', 4: 'th', 5: 'th',
#                 6: 'th', 7: 'th', 8: 'th', 9: 'th', 0: 'th' }
#
# Algorithm:
# 1) input / 100 = century_number
# 2) if input % 100 == 0, century_number from step 1 stays the same
# 3) otherwise, century_number = century_number + 1
# 4) if century_number is >= 100, 
#    use the last digit of the century number to look up ordinal suffix
#    in the ordinal suffix hash
# 5) elsif century_number is between 
# 6) convert century_number to string and concatenate with ordinal suffix
# 7) return the result of step 5
#
# Code:

def century(year_int) 
  p year_int
  ordinal_hsh = { 0 => 'th',
                  1 => 'st',
                  2 => 'nd', 
                  3 => 'rd', 
                  4 => 'th', 
                  5 => 'th',
                  6 => 'th', 
                  7 => 'th', 
                  8 => 'th', 
                  9 => 'th' 
                }

  century_number = year_int / 100
  century_number += 1 unless year_int % 100 == 0
  
  # use the last digit from century_number to look up ordinal suffix
  century_num_string = century_number.to_s
  last_digits = century_number % 100
  if (last_digits < 14 && last_digits > 10)
    ordinal_suffix = 'th'
  else
    last_digit = last_digits % 10
    ordinal_suffix = ordinal_hsh[last_digit]
  end
  final_answer = century_num_string + ordinal_suffix
  p final_answer
end

# Tests:
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
