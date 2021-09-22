# practice_med2.rb

# Question 1
# By line 16:
# a_outer.object_id = a_outer_id
# b_outer.object_id = b_outer_id
# c_outer.object_id = c_outer_id
# d_outer.object_id = d_outer_id

# By line 28:
# a_outer.object_id = a_outer_id
# b_outer.object_id = b_outer_id
# c_outer.object_id = c_outer_id
# d_outer.object_id = d_outer_id
# Explanation: The block is able to access variables in the outer scope

# By line 39:
# a_outer.object_id = new ID 1
# b_outer.object_id = new ID 2
# c_outer.object_id = new ID 3
# d_outer.object_id = new ID 4
# Explanation: Assigning values to the previous variables creates a new object

# By line 56:
# a_inner.object_id = a_outer.object_id
# b_inner.object_id = b_outer.object_id
# a_inner.object_id = c_outer.object_id
# d_inner.object_id = d_outer.object_id

# By line 68:
# a_outer.object_id = a_outer_id (new one)
# b_outer.object_id = b_outer_id (new one)
# c_outer.object_id = c_outer_id (new one)
# d_outer.object_id = d_outer_id (new one)
# All of the inner variables do not exist outside of the block scope

# Question 2
# By line 16:
# All object IDs instantiated to their originals.

# Inside of the method:
# The outer objects (because they're included as arguments) keep the same
# object IDs until they're re-assigned and become new objects.
# The inner objects take on the new object IDs.

# By line 31:
# Outer object IDs are in their original state after leaving the method.
# The inner objects don't exist outside of the method.

# Question 3
# The string output will be "pumpkins"
# The array output will be ["pumpkins", "rutabaga"]
# The string concatenation with += does not mutate the caller, only re-assigns
# the resultant value to a new object

# Question 4
# The string output will be "pumpkinsrutabaga"
# The array output will be ["pumpkins"]
# Like the previous question, using << mutates the caller and assignment does
# not

# Question 5
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += "rutabaga" # Changed from <<
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Question 6
def color_valid(color)
  color == "blue" || color == "green"
end
