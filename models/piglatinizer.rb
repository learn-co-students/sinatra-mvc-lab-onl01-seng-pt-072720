class PigLatinizer

    def piglatinize(text)
        text.split(" ").map{|w| piglatinize_word(w)}.join(" ")
    end
    
    def piglatinize_word(word)
        if vowel?(word[0])
            word + "way"
        else
            v_index = word.index(/[aAeEiIoOuU]/)
            consonants = word.slice(0..v_index-1)
            leftover = word.slice(v_index..word.length)
            leftover + consonants + "ay"
        end
    end

    def vowel?(letter)
        letter.match(/[aAeEiIoOuU]/)
    end
end