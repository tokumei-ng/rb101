# practice_med1.rb

# Question 1
10.times { |space| puts (" " * space) + "The Flintstones Rock!" }

# Question 2
# Adding integer (40 + 2) to the string "the value of 40 + 2 is " will generate
# a TypeError because strings and integers can't be concatenated without
# interpolation or type conversion.
# Fix 1
puts "the value of 40 + 2 is " + (40 + 2).to_s

# Fix 2
puts "the value of 40 + 2 is #{40 + 2}"

# Question 3
def factors(number)
  # divisor = number
  factors = []
  if number > 0
    1.upto(number) { |div| factors << number / div if number % div == 0 }
  end
  # begin
  #   factors << number / divisor if number % divisor == 0
  #   divisor -= 1
  # end until divisor == 0
  factors
end

p factors(12)

# Question 3 Bonus 1
# number % divisor == 0 is to test and see if the number is divisible by the
# divisor (remainder of dividing number and divisor should be 0)

# Question 3 Bonus 2
# Placing factors before the method's end guarantees that the factors array
# will be the last line in the method and therefore returned once it's
# complete.

# Question 4
# The rolling_buffer1 method using << will mutate the original buffer, whereas
# the rolling_buffer2 method will not.

# Question 5
# The limit variable is not accessible by the fib() method and is not taken as
# an argument into the method.
limit = 15

def fib(first_num, second_num, lim)
  while first_num + second_num < lim
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"

# Question 6
# The output will be 34.
# mess_with_it() does not alter the original value of answer in any way,
# so it will still be 42 in line 9.

# Question 7
# Yes, the data is ransacked. The value of the original hash is not mutated in
# any way, but the individual entries in the hash are re-assigned to new
# values.

# Question 8
# puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
# puts rps(rps(rps("rock", "paper"), "rock"), "rock")
# puts rps(rps("paper", "rock"), "rock")
# puts rps("paper", "rock")
# "paper"

# Question 9
# "no"
