# practice_hard1.rb

# Question 1
# Nothing happens. The variable greeting exists in the scope of the
# conditional (which does not generate its own scope), but because it is
# not assigned anything, it will return back nil.

# Question 2
# {:a=>"hi there"}

# Question 3
# A)
# "one is: one"
# "two is: two"
# "three is: three"

# B)
# "one is: one"
# "two is: two"
# "three is: three"

# C)
# "one is: two"
# "two is: three"
# "three is: one"

# Question 4
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  # Contend with input_string having the wrong number of constituents
  if dot_separated_words.size != 4
    return false
  else
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      return false unless is_an_ip_number?(word)
    end
    return true
  end
end
