 def each_cons(array)
   idx = 0
   # only wants to count till the second last element since there is nothing to
   # pair with the last element
   while idx < array.size - 1
     yield array[idx], array[idx + 1]
     idx += 1
   end
 end

# using each_with_index
# def each_cons(array)
#   array.each_with_index do |item, idx|
#     break if idx + 1 >= array.size
#     yield(item, array[idx + 1])
#   end
# end

hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end

p result == nil
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
each_cons([]) do |value1, value2|
  hash[value1] = value2
end
p hash == {}

hash = {}
each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
p hash == {'a' => 'b'}
