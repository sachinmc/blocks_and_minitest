# def compute
#   block_given? ? yield : 'Does not compute.'
# end

# puts compute { 5 + 3 }
# puts compute { 'a' + 'b' }
# puts compute


# refactor

# def compute
#   return 'Does not compute' unless block_given?
#   yield
# end

# NJ solution
def compute(arg, &block)
  block_given? ? block.call(arg) : 'Does not compute'
end

compute(10) { |n| n.abs2 } == 100
compute(10, &:abs2) == 100
compute('string', &:upcase) == 'STRING'
compute([1,2,3], &:sum) == 6
compute(5) { |n| puts n } == nil
compute(10) == 'Does not compute.' 



# def compute(mult=2)
#   return 'Does not compute' unless block_given?
#   yield mult
# end
#

# puts compute { |mult|  8 * mult }
# puts compute(3) { |mult| ('a' + 'b') * mult }
# puts compute
