# Leap Years (Part I)
#
# Problem
# Write a method that takes any year greater than 0 as input, 
# and returns true for a leap year, false otherwise.
#
# The rule for determining a leap year under the Gregorian Calendar
# is as follows: every year that is evenly divisible by 4, 
# unless also divisible by 100, is a leap year. Unless the 
# aformentioned divisible by 100 year is evenly divisible by 400, 
# in which case it too is a leap year.
#
# Examples
# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == false
# leap_year?(1) == false
# leap_year?(100) == false
# leap_year?(400) == true
# 
# Data Structures
# nothing special needed besides control flow code
#
# Algorithm
# 1) check that year is valid (an integer greater than 0) 
# 2) initialize leap_year = false
# 3) use rules to determine if year is a leap year. if so, leap_year = true
# 4) return leap_year
#
# Code

module GregorianCalendar

  def leap_year?(year)
    leap_year = false
    if (year % 4 == 0)
      leap_year = true
    end
    if (year % 100) == 0 && !(year % 400 == 0)
      leap_year = false
    end
    leap_year
  end

  module_function :leap_year?
end

include GregorianCalendar

# Tests 
p GregorianCalendar.leap_year?(2016) == true
p GregorianCalendar.leap_year?(2015) == false
p GregorianCalendar.leap_year?(2100) == false
p GregorianCalendar.leap_year?(2400) == true
p GregorianCalendar.leap_year?(240000) == true
p GregorianCalendar.leap_year?(240001) == false
p GregorianCalendar.leap_year?(2000) == true
p GregorianCalendar.leap_year?(1900) == false
p GregorianCalendar.leap_year?(1752) == true
p GregorianCalendar.leap_year?(1700) == false
p GregorianCalendar.leap_year?(1) == false
p GregorianCalendar.leap_year?(100) == false
p GregorianCalendar.leap_year?(400) == true
