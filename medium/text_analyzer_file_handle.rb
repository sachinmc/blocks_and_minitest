class TextAnalyzer
  def process
    text = File.read('./text.file')
    yield text
  end

end

analyzer = TextAnalyzer.new
analyzer.process { |txt| puts "#{txt.scan(/\n\n/).size + 1} paragraphs" }
analyzer.process { |txt| puts "#{txt.scan(/\n/).size} lines" }
analyzer.process { |txt| puts "#{txt.scan(/\w+/).size} words" }
