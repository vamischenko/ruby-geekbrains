def my_map(arr)
  if block_given?
    a = []
    arr.each { |element| a << yield(element) }
    return a
  end
  arr.inspect
end

ar = [1, 2, 3]
puts my_map(ar) { |x| x }
