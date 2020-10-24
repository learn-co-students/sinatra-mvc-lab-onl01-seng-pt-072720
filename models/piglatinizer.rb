class PigLatinizer
    attr_reader :string

    def initialize(user_phrase=nil)
        @string = user_phrase
    end

    def piglatinize_word(word)
        if word.start_with?(/^[aeiouAEIOU]/) && word.size > 1
            "#{word}way"
        elsif word.size == 1 
            "#{word}way"
        else
            word_array = word.split(/^([^aeiou]+)+/)
            beginning = word_array[1]
            ending = word_array[2]
            "#{ending}#{beginning}ay"
        end
    end

    def split_phrase
        @string.split(" ")
    end

    def piglatinizer
        pig_words = []
        split_phrase.each do |word|
            pig_words << piglatinize_word(word)
        end
        pig_words.join(" ")
    end

    def piglatinize(word)
        pig_words = []
        array = word.split(" ")
    
        array.each do |w|
            pig_words << piglatinize_word(w)
        end
        pig_words.join(" ")
    end


end
