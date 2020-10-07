# Multiples of 3 and 5
#
# PROBLEM
# Write a method that searches for the multiples of 3 and 5 lying between
# 1 and some other number (the input paramater), and computes the sum 
# of those multiples. An example being parameter = 20, with result 98
# (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20)
#
# Assume that the number passed in to the method will be an integer
# greater than 1.
#
# EXAMPLES
# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168
#
# DATA STRUCTURES
# lists for multiples of 3 and 5
#
# ALGORITHM
# 1) compute multiples of 3 between 1 and parameter
# 2) compute multiples of 5 between 1 and parameter
# 3) merge the two lists of multiples
# 4) sum the merged list 
#
# CODE

def multisum(int)
  threes = [] 
  fives = []
  counter = 1
  (int/3).floor.times do
    threes << 3 * counter
    counter += 1
  end
  counter = 1
  (int/5).floor.times do
    fives << 5 * counter
    counter += 1
  end
  merged = (threes + fives).uniq
  sum = 0
  for num in merged 
    sum += num 
  end
  p sum
end

# TESTS
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
