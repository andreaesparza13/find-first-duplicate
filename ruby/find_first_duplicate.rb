require 'pry'

def find_first_duplicate(arr)
  seen = {}
  arr.each do |x|
    if !seen[x]
      seen[x] = 1
    else
      return x
    end
    p seen
  end
  return -1
end

arr1 = [2, 1, 3, 3, 2]
arr2 = [1, 2, 3, 4]

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 3"
  puts "=>", find_first_duplicate([2, 1, 3, 3, 2])

  puts

  puts "Expecting: -1"
  puts "=>", find_first_duplicate([1, 2, 3, 4])

  # Don't forget to add your own!
end

/
1. Understand the problem
    a. What datatypes are we given? => Array of integers
    b. What datatype is the return supposed to be? => Integer
    c. Bonus - identify potential stretch cases 
2. Pseudocode
    a. Run with your first thought
        Loop through array
          log each element
          check if we've seen this element before
          if yes:
            break the loop
            return this element
          if no:
            continue loop
          if loop ends with no match:
            return -1
/