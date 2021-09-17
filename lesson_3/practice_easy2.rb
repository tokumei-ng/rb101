# practice_easy2.rb

# Question 1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
puts !!ages.assoc("Spot")

# Question 1 Bonus
puts !!ages.include?("Spot")
puts !!ages.has_key?("Spot")

# Question 2
munsters_description = "The Munsters are creepy in a good way."
puts munsters_description.swapcase
puts munsters_description.capitalize
puts munsters_description.downcase
puts munsters_description.upcase

# Question 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)
p ages

# Question 4
advice = "Few things in life are as important as house training your pet dinosaur."
puts advice.include?("Dino") # Also not a perfect solution

# Question 5
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Question 6
flintstones << "Dino"
p flintstones

# Question 7
flintstones.push("Dino", "Hoppy")
p flintstones

# Question 8
advice = "Few things in life are as important as house training your pet dinosaur."
puts advice.slice!(0, 38) # Used advice.index('house') instead of 38
puts advice
# Using String#slice would return the same string, but advice would remain
# unmutated.

# Question 9
statement = "This Flintstones Rock!"
puts statement.count("t")

# Question 10
title = "Flintstone Family Members"
spaces = (40 - title.length) / 2
title = (" " * spaces) + title + (" " * spaces) # Answer uses center(40)
puts title
