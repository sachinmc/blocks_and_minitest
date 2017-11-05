# also an example of sandwich code.
# it performs some pre and post processing for some arbitary action
# here, the pre-processing opens a file and the post-processing closes it.
# together, they sandwich the action that loads the files contents and
# passes it to a block.

class TextAnalyzer
  def process
    file = File.open('./text.file', 'r')
    yield(file.read)
    file.close
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |text| puts "#{text.split("\n\n").count} paragraphs" }
analyzer.process { |text| puts "#{text.split("\n").count} lines" }
analyzer.process { |text| puts "#{text.split(' ').count} words" }
