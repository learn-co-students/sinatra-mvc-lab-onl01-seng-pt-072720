class PigLatinizer
    def piglatinize(string)
        words = string.split(" ")
        single_word = words.map { | word | piglatinize_word(word) }
        single_word.join(" ")
    end

    def piglatinize_word(word)
        first_letter = word[0].downcase

        if ['a', 'e', 'i', 'o', 'u'].include?(first_letter)
            "#{ word }way"
        else
            consonants = []
            consonants << word[0]

            if (!['a', 'e', 'i', 'o', 'u'].include?(word[1]))
                consonants << word[1]
                if (!['a', 'e', 'i', 'o', 'u'].include?(word[2]))
                    consonants << word[2]
                end
            end

            "#{word[consonants.length..-1] + consonants.join + "ay"}"
        end
    end
end