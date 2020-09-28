# Leap Years Part Two
#
# Problem
# Prior to the adoption of the Gregorian Calendar in 1752,
# the Julian Calendar was used, which had leap years occurring
# in any year divisible by 4.
#
# Update the method from Part 1 to reflect this historical change
# and accurately determine leap years before (with Julian Calendar)
# and after (with Gregorian Calendar) the year 1752.
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
# leap_year?(1700) == true
# leap_year?(1) == false
# leap_year?(100) == true
# leap_year?(400) == true

require_relative "leap_years_p1"
include GregorianCalendar

def leap_year?(year)
  leap_year = false
  if year >= 1752
    leap_year = GregorianCalendar.leap_year?(year)
  elsif year % 4 == 0
      leap_year = true
  end
  leap_year
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true
