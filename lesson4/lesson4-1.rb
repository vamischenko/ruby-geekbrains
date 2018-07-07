# task 4
p %i[first second third]

arr = %i[first second third]
h = {}
puts arr.length
puts arr[0]
for item in arr
  puts arr.index(item) + 1
  m = arr.index(item) + 1
  h[item] = m
end
puts h
