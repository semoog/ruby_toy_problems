# You are given an array strarr of strings and an integer k.
# Your task is to return the first longest string consisting of k consecutive strings taken in the array.

# longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2) --> "abigailtheta"

# n being the length of the string array, if n = 0 or k > n or k <= 0 return "".

def longest_consec(strarr, k)
  return '' if
    strarr.length.zero? || k > strarr.length || k <= 0
  result = strarr[0] + strarr[1]
  strarr.each.with_index do |_value, i|
    temp = strarr[i - 1] + strarr[i]
    if temp.length > result.length
      result = temp
    elsif i == strarr.length - 1
      puts result
    end
  end
end

longest_consec(%w(zone abigail theta form libe zas), 2)
# abigailtheta
