# Take a number: 56789. Rotate left, you get 67895.
#
# Keep the first digit in place and rotate left the other digits: 68957.
#
# Keep the first two digits in place and rotate the other ones: 68579.
#
# Keep the first three digits and rotate left the rest: 68597. Now it is over since keeping the first four it remains only one digit which rotated is itself.
#
# You have the following sequence of numbers:
#
# 56789 -> 67895 -> 68957 -> 68579 -> 68597
#
# and you must return the greatest: 68957.
#
# Calling this function max_rot (or maxRot or ... depending on the language)
#
# max_rot(56789) should return 68957

# https://en.wikipedia.org/wiki/Bitwise_operation#Rotate_no_carry

def max_rot(n)
  result = n
  n = n.to_s.chars
  len = n.length
  for i in 0..len
    n.push(n[i])
    n.delete_at(i)
    temp = n.join('').to_i
    if temp > result
      result = temp
    elsif i == len
      puts result
      return result
    end
  end
end

max_rot(38_458_215)
# 85821534
