# solution 1:
#
# def missing(array)
#   result = []
#   array.each_index do |idx|
#    current_num = array[idx] + 1
#    next_num = array[idx+1] != nil ? array[idx+1] : current_num
#    loop do
#      if current_num != next_num
#        result << current_num
#        current_num += 1
#      else
#        break
#      end
#    end
#   end
#   result
# end


# solution 2:
#
# def missing(array)
#   result = []
#   array.each_index do |idx|
#     break if idx == array.size - 1 # so that the last num is not processed.
#     next_num = array[idx] + 1
#     loop do
#       break if array.include?(next_num)
#       result << next_num
#       next_num += 1
#     end
#   end
#   result
# end

# using Enumerable#each_cons - iterate through consecutive overlapping sequences
# for comparison: Enumerable#each_slice - iterates through consecutive
# non overlapping sequences
def missing(array)
  result = []
  array.each_cons(2) do |first, second|
    result.concat(((first +1 )..(second - 1)).to_a)
  end
  result
end




p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []
