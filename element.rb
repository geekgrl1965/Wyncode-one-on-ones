# Create a method named element_index that accepts two arguments named element
# and my_array. If element is in my_array, then return the index (or position) of
# element within my_array. If element isn't in my_array, return -1.
# YOU MUST USE LOOPS. Your method can be tested like this:
#
# puts element_index("b", ["a", "b", "c"])
# # should output 1
#
# puts element_index("hello", ["a", "b", "c"])
# # should output -1
# Hint: Build this by iterating, get something running, then improve.
# Don't expect a final solution to be there after the first try.

def element_index(element, my_array)
  my_array.each_with_index do |letter, i|
    if element == letter
       return i
     end
  end
  -1
end

puts element_index("b", ["a", "b", "c"])
puts element_index("c", ["a", "b", "c"])
puts element_index("d", ["a", "b", "c"])
