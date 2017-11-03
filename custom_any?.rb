require 'set'

def any?(collection)
  collection.each {|ele| return true if yield ele}
  false
end

# recursive: (NJ solution)

def any?(arr, &block)
  return false if arr.empty?
  block.call(arr.first) ? true : any?(arr.drop(1), &block)
end


# solution

def any?(arr)
  arr.each { |ele| return true if yield ele } && false
end

# solution

def any?(arr)
  arr.each_with_object(false) { |ele| return true if yield ele }
end 


# testing with Arrays
p any?([1, 3, 5, 6]) { |value| value.even? } == true
p any?([1, 3, 5, 7]) { |value| value.even? } == false
p any?([2, 4, 6, 8]) { |value| value.odd? } == false
p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p any?([1, 3, 5, 7]) { |value| true } == true
p any?([1, 3, 5, 7]) { |value| false } == false
p any?([]) { |value| true } == false

# testing with Hashes
p any?({a: 100, b: 200}) { |value| value[1] > 100 } == true

# testing with Sets
p any?([2, 4, 6, 8].to_set) { |value| value.odd? } == false
