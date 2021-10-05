# practice_problems_1.rb

# Practice Problem 1
# Return value: [1, 2, 3]
# Explanation: Enumerable#select makes use of the truthiness of each loop,
# and since 'hi' always evaluates to being truthy, the original array is
# returned

# Practice Problem 2
# Enumberable#count evalutes based on the truthiness of the block's
# return value. This can be tested by putting a value at the last line of
# the block that will always evaluate as being truthy.
# Actual answer: Checking the documentation

# Practice Problem 3
# Return value: [1, 2, 3]
# The puts command will output nil, which is considered a falsey value and
# therefore accepted by Enumerable#reject.

# Practice Problem 4
# Return value: {'a': 'ant', 'b': 'bear', 'c': 'cat'}
# Based on the argument given to each_with_object, a Hash will be returned
# (hash in the block's parameters). The first index of value will be the first
# character in each string of the caller array, and their values will be
# each array item's original value.

# Practice Problem 5
# If unsure about what a method does, checking the Ruby documentation will
# help. Alternatively, outputting the original value and then calling shift
# will show the difference in outputs.
# Shift will pull the first value in the data structure and output that
# value.

# Practice Problem 6
# Return value: 11
# Calling pop() will remove the last inserted value from the array and output
# the value, allowing size() to be called on 'caterpillar' to get a string
# size of 11.

# Practice Problem 7
# Return value: true
# Enumerable#any? will return a boolean value based on whether it manages to
# find any value in the data structure that returns a truthy value. Because
# the first value (1) will return a truthy value from odd?(), any?() will
# also return true.

# Practice Problem 8
# We can check by looking at the Ruby documentation.
# Take will return the first n elements from an enumerable container.

# Practice Problem 9
# Return value: [nil, 'bear']
# Map will return a new array after performing some kind of transformation
# on the values in the caller container. Because the value of 'ant'.size is not
# greater than 3, there is no return value (nil), which gets placed into the
# new array being returned. 'bear'.size will return value.

# Practice Problem 10
# Return value: [1, nil, nil]
# As mentioned in a previous problem, the puts command always returns nil,
# so when a value satisfies the if condition, puts num will be called (outputting
# said num value to the screen) and return nil for that loop.
