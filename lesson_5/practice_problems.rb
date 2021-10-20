# practice_problems.rb

# Practice Problem 1
arr = ['10', '11', '9', '7', '8']

new_arr = arr.sort do |num1, num2|
  num2.to_i <=> num1.to_i
end

p new_arr

# Practice Problem 2
books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

sorted_books = books.sort do |hsh1, hsh2|
  hsh1[:published].to_i <=> hsh2[:published].to_i
end

p sorted_books

# Practice Problem 3
arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
puts arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
puts arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]
puts arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
puts hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
puts hsh2[:third].keys[0]

# Practice Problem 4
arr1 = [1, [2, 3], 4]
arr1[1][1] = 4

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[2] = 4

hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2][0] = 4

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[['a']][:a][2] = 4

# Practice Problem 5
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

male = munsters.select { |_, val| val["gender"] == "male" }
total_age = male.reduce(0) { |sum, entry| sum += entry[1]["age"] }
puts total_age

# Practice Problem 6
munsters.each { |key, val| puts "#{key} is a #{val["age"]}-year old #{val["gender"]}." }

# Practice Problem 7
# a = 2
# b = [3, 8]

# Practice Problem 8
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |key, val|
  val.each do |str|
    str.chars.each do |c|
      puts c if /[aeiou]/.match(c)
    end
  end
end

# Practice Problem 9
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

new_arr = arr.map { |sub| sub.sort { |a, b| b <=> a } }
p new_arr

# Practice Problem 10
hsh_arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_hsh = hsh_arr.map { |hsh| hsh.each { |key,_| hsh[key] += 1 } }
p new_hsh

# Practice Problem 11
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

new_arr = arr.map do |subarr|
  subarr.select { |val| val % 3 == 0 }
end

p new_arr

# Practice Problem 12
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
hsh = arr.map { |subarr| {subarr[0] => subarr[1]} }
p hsh

# Practice Problem 13
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

new_arr = arr.sort do |sub1, sub2|
  sub1.select { |n| n.odd? } <=> sub2.select { |n| n.odd? }
end

p new_arr

# Practice Problem 14
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

hsh_arr = hsh.map do |_, val|
  if val[:type] == 'fruit'
    val[:colors].map { |color| color.capitalize }
  else
    val[:size].upcase
  end
end

p hsh_arr

# Practice Problem 15
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

new_arr = arr.select do |hsh|
  hsh.each_value.all? do |val|
    val.all? { |num| num.even? }
  end
end

p new_arr

# Practice Problem 16
HEX_VALUES = ('0'..'9').to_a.concat(('a'..'f').to_a)

def generate_uuid
  uuid = ""
  8.times { |_| uuid << HEX_VALUES.sample }
  uuid << '-'
  3.times do |_|
    4.times { |_| uuid << HEX_VALUES.sample }
    uuid << '-'
  end
  12.times { |_| uuid << HEX_VALUES.sample }
  uuid
end

puts generate_uuid
