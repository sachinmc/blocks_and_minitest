fact = Enumerator.new do |y|
  prod = n = 1
  y << 0
  loop do
    y << prod
    prod *= (n += 1)
  end
end


# printing out the first 7 factorial values, including zero
# printing using external iteration
7.times { p fact.next }

# printing out the first 7 factorial values, including zero
# printing using internal iteration
# have not reset enumerator with fact.rewind since Enuemrator#next doesn't
# seem to affect internal iteration
p fact.take(7)
