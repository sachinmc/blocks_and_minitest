items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield *items
  puts "We've finished gathering!"
end

gather(items) do |*the_rest, wheat|
  puts the_rest.join(', ')
  puts wheat
end

gather(items) do |apples, *the_rest, wheat|
  puts apples
  puts the_rest.join(', ')
  puts wheat
end

gather(items) do |apples, *the_rest|
  puts apples
  puts the_rest.join(', ')
end

gather(items) do |apples, corn, cabbage, wheat|
  puts "#{apples}, #{corn}, #{cabbage}, and #{wheat}"
end

# also without blocks
# with blocks, we can invoke gather any number of times, since the invocation
# is unique based on the block implementation.
# however without blocks, gather functionality is static, it is implemented to
# a specific task only. 

# def gather(*produce, wheat)
#   puts "Let's start gathering food."
#   puts produce.join(', ')
#   puts wheat
#   puts "We've finished gathering!"
# end

# def gather(apples, *vegetables, wheat)
#   puts "Let's start gathering food."
#   puts apples
#   puts vegetables.join(', ')
#   puts wheat
#   puts "We've finished gathering!"
# end

# def gather(apples, *assorted)
#   puts "Let's start gathering food."
#   puts apples
#   puts assorted.join(', ')
#   puts "We've finished gathering!"
# end

#def gather(apples, corn, cabbage, wheat)
#  puts "Let's start gathering food."
#  puts "#{apples}, #{corn}, #{cabbage}, and #{wheat}"
#  puts "We've finished gathering!"
#end

# gather(*items)
