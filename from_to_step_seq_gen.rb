def step(start, finish, step)
  num = start
  while num <= finish
    yield num
    num += step
  end
end

step(1, 10, 3) { |value| puts "value = #{value}" }
