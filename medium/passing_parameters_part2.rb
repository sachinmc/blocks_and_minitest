# def bird_method(array)
#   yield *array
# end
#

# birds = %w(raven finch hawk eagle)
# bird_method(birds) do |raven, finch, *raptors|
#   p raven
#   p finch
#   p raptors
# end


# ls solution
birds = ['crow', 'finch', 'hawk', 'eagle', 'osprey']

def types(birds)
  yield birds
end

# underscore tells ruby we are not interested in those values
types(birds) do |_, _, *raptors|
  puts "Raptors: #{raptors.join(', ')}."
end 
