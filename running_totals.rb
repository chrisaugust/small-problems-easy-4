# Running Totals
#
# Problem
# Write a method that takes an array of numbers, and returns
# an array with the same number of elements, with each element
# consisting of the running total from the input array.
#
# Examples
# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []
#
# Data Structures
# arrays for input and output
#
# Algorithm
# 1) initialize new, empty array (running_total_arr) 
# 2) loop through elements in input array by index,
#    using the elements of input array to compose 
#    those of running_total_arr via the following rule:
#    running_total_arr[n] = running_total_arr[n-1] + input_arr[n]
# 3) return running_total_arr
#
# Code

def running_total(input_arr)
  running_total_arr = []
  input_arr.each_with_index do |elem, idx|
    if idx == 0
      running_total_arr[idx] = input_arr[idx]
      p running_total_arr
    else
      running_total_arr[idx] = running_total_arr[idx - 1] + input_arr[idx]
      p running_total_arr
    end
  end
  return running_total_arr
end

# Tests
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
