# display/output of items is moved to a block, and its implementation is left
# to the user of gather method.
def gather(items)
  puts "Let's start gathering food."
  yield items
  puts "Let's start gathering food."
end

items = ['apple', 'corn', 'cabbage', 'wheat']

# note, puts argument is a string (returned from Array#join)
gather(items) do |produce|
  puts produce.join('; ')
end

gather(items) do |produce|
  puts "We've gathered some vegetables: #{produce[1]} and #{produce[2]}"
end
