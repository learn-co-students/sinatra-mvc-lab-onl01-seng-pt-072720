require 'pry'

class PigLatinizer
  attr_reader :string

  def initialize (string = nil)
    @string = string
  end


  def piglatinize(string)
    words = string.split(' ')
    array = []
    words.each do |temp|
      array << piglatinize_word(temp)
    end
    array.join(' ')
  end



  def piglatinize_word(word)

    vowels = ["a", "e", "i", "o", "u"]

    if (vowels.include? "#{word[0]}".downcase)
      "#{word}way"
    else
      split_word = word.split /([aeiou].*)/
      "#{split_word[1]}#{split_word[0]}ay"
    end
  end

# binding.pry

end
