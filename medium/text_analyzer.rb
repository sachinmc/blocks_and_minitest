class TextAnalyzer
  def process(&block)
    text = "Eiusmod non aute commodo excepteur amet consequat ex elit. Ut excepteur ipsum
            enim nulla aliqua fugiat quis dolore do minim non. Ad ex elit nulla commodo
            aliqua eiusmod aliqua duis officia excepteur eiusmod veniam. Enim culpa laborum
            nisi magna esse nulla ipsum ex consequat. Et enim et quis excepteur tempor ea
            sit consequat cupidatat.

            Esse commodo magna dolore adipisicing Lorem veniam quis ut labore pariatur quis
            aliquip labore ad. Voluptate ullamco aliquip cillum cupidatat id in sint ipsum
            pariatur nisi adipisicing exercitation id adipisicing qui. Nulla proident ad
            elit dolore exercitation cupidatat mollit consequat enim cupidatat tempor
            aliqua ea sunt ex nisi non.

            Officia dolore labore non labore irure nisi ad minim consectetur non irure
            veniam dolor. Laboris cillum fugiat reprehenderit elit consequat ullamco veniam
            commodo."

    paras = text.scan(/\n\n/).size + 1
    lines = text.scan(/\n/).size + 1
    words = text.scan(/\w+/).size
    case block.call
      when "paragraphs" then puts "#{paras} #{block.call}"
      when "lines" then puts "#{lines} #{block.call}"
      when "words" then puts "#{words} #{block.call}"
    end
  end
end

analyzer = TextAnalyzer.new
analyzer.process { "paragraphs" }
analyzer.process { "lines"  }
analyzer.process { "words" }



# process is called 3 times and each time the output is different
# that is the gist of using blocks! :) a method can be extended in its
# functionality based on blocks used
# in this case block is passed explicitly to the method (as a proc object)
# since the value of the block is needed to determine the type of output to be
# returned

# paragraphs counted based on empty space lines between them
# 2 new lines next to each other follows one paragraph. no new line after last
# paragraph, so add + 1

# lines counted based on end of line characters like new line
# every line ends with a new line character except for the last line
# so, total number of new line characters + one

# words counted based on spaces between words
# every word is followed by a space, except for the last word in a line
# so, total number of words in a line = total number of words per line + 1
