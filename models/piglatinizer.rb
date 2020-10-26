class PigLatinizer 
    attr_reader :text

    def piglatinize(word)
        exploded_word = word.split(/[aeiou]/)
        # binding.pry
        if exploded_word[0].include?(/[bcdfghjklmnpqrstvwxyz]/)
            ("#{word[1..-1]} + #{exploded_word[0]} + ay").join
        else
            ("#{word} + way").join
        end
    end

    def to_pig_latin(text)
        sentence_to_words = text.split(" ")
        sentence_to_words.map! do |word|
            piglatinize(word)
        end
        sentence_to_words.join(" ")
    end
end
    
    # attr_reader :words

    # def initialize(words)
    #     @words = words.downcase
    # end

    # @text.split("")
    
