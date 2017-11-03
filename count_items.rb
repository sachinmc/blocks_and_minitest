# def count(array)
#   count = 0
#   array.each { |ele| count += 1 if yield ele }
#   count
# end

# further exploration:

def count(array, &block)
  total = 0
  return total if array == []
  total += 1 if yield array.pop
  total + count(array, &block)
end

p count([1,2,3,4,5]) { |value| value.odd? } == 3
p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
p count([1,2,3,4,5]) { |value| true } == 5
p count([1,2,3,4,5]) { |value| false } == 0
p count([]) { |value| value.even? } == 0
p count(%w(Four score and seven)) { |value| value.size == 5 } == 2
