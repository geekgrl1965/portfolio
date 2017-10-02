# Return the largest number from the array, without using max.
# Make the tests pass. Do not use sort, max, for or while.

def max(items)
  max_number = 0
  items.each do |i|
    if i > max_number
      then max_number = i
    end
  end
  p max_number
end

puts max([1,2,3,4,5,6]) == 6
puts max([4,5,6,1,2,3]) == 6
puts max([9,8,7,6,5,3,1]) == 9
