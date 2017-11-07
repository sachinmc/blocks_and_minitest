def convert_to_base_8(n)
  n.to_s(8).to_i
end

base8_proc = method(:convert_to_base_8).to_proc

[8,10,12,14,16,33].map(&base8_proc)

# also
# in this case, the method object is called with to_proc by &
# [8,10,12,14,16,33].map(&method(:convert_to_base_8))
