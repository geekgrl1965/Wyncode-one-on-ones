# Create a while loop that outputs the square roots of the odd positive integers less than or equal to 25.
# The output of your program should look like this:
#
# The square root of 1 equals 1.0
# The square root of 3 equals 1.7320508075688772
# The square root of 5 equals 2.23606797749979
# The square root of 7 equals 2.6457513110645907
# The square root of 9 equals 3.0
# The square root of 11 equals 3.3166247903554
# The square root of 13 equals 3.605551275463989
# The square root of 15 equals 3.872983346207417
# The square root of 17 equals 4.123105625617661
# The square root of 19 equals 4.358898943540674
# The square root of 21 equals 4.58257569495584
# The square root of 23 equals 4.795831523312719
# The square root of 25 equals 5.0
# Hint: Use puts to figure out what number you're currently trying to find the square root of.

i=1
while i<26
  puts "The square root of #{i} equals #{Math.sqrt(i)}"  unless i.even?
  i+=1
end
