# practice_easy1.rb

# Question 1
# Expected output: 1 2 2 3 (on new lines)
# Explanation: Calling uniq is non-mutating and won't change the original
# caller.

# Question 2
# ! and ? are just conventions in naming to show that a method will either
# mutate the caller (as in the case of !) or return a boolean value (for ?).
# ? is also the ternary operator; ! is the boolean not operator

# 1. != means "not equal to" and is used in conditional statements
# 2. !user_name will produce a falsey value (if user_name is truthy) or vice versa
# 3. ! after words.uniq doesn't do anything by itself, but uniq! is one entire
#    method name that will mutate 'words'
# 4. You would get a SyntaxError for putting ? before something
# 5. Putting ? after a conditional will make it a ternary operator; putting it
#    at the end of a method name returns a boolean value if said method exists
# 6. !! before a value will return true if it's truthy and false if it's falsey

# Question 3
advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!(/important/, "urgent")
puts advice

# Question 4
# numbers.delete_at(1)
# Deletes the value at index 1 (which would be 2)

# numbers.delete(1)
# Deletes the value 1 from the array

# Question 5
puts (10..100).include?(42)

# Question 6
famous_words = "seven years ago..."
# Method 1
famous_words = "Four score and " << famous_words
puts famous_words

# Method 2
famous_words = "seven years ago..."
famous_words = "Four score and ".concat(famous_words)
puts famous_words

# Question 7
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!
p flintstones

# Question 8
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones = flintstones.select { |key, val| key == "Barney" }.to_a.flatten
p flintstones
# Given answer: flintstones.assoc("Barney") <- more concise way
