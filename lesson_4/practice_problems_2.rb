# practice_problems_2.rb

# Practice Problem 1
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

new_hash = flintstones.each_with_object({}) { |elem, hash| hash[elem] = flintstones.index(elem) }
p new_hash

# Practice Problem 2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

age_sum = ages.values.reduce(:+)
puts age_sum

# Practice Problem 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

result = ages.delete_if { |key, val| val >= 100 }
p result

# Practice Problem 4
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

min_age = ages.values.min
puts min_age

# Practice Problem 5
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

elem = flintstones.find { |elem| elem[0..1] == "Be" }
puts flintstones.index(elem)

# Practice Problem 6
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

new_arr = flintstones.map { |elem| elem[0..2] }
p new_arr

# Practice Problem 7
statement = "The Flintstones Rock"

count_hash = statement.chars.each_with_object({}) { |char, hash| hash[char] = statement.count(char) }
p count_hash

# Practice Problem 8
# Code 1
# Output: 1 3
# Explanation: Data structure iterators likely use a pointer system to keep
# track of where in the enumerable the loop is currently at. As such, when a
# value is shifted out of the array, the pointer will still be at the second
# value in the array, but that second value (at index 1) is now different than
# expected (1 is shifted out, moving 2 to index 0 and 3 to index 1). Shifting
# the value at index 0 again (2) pushes 4 to index 1, but the pointer is already
# past index 1, going out of the range of the array's length.

# Code 2
# 1 2
# Explanation: Similar to the above explanation except values are being popped
# from the end of the array, so when index 1 is reached, the array has run out
# of values to be looped through.

# Practice Problem 9
def titleize(str)
  str.split.map { |word| word.capitalize }.join(' ')
end

words = "the flintstones rock"
words = titleize(words)
puts words

# Practice Problem 10
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |key, val|
  case munsters[key]["age"]
  when 0..17 then munsters[key]["age_group"] = "kid"
  when 18..64 then munsters[key]["age_group"] = "adult"
  else munsters[key]["age_group"] = "senior"
  end
end

p munsters
