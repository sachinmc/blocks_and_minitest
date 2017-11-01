class Integer
  def my_times
    (0...self).each do |e|
      yield e
    end
    self
  end
end
