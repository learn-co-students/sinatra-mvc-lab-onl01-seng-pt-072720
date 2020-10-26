class PigLatinizer

    def pig_one_word(word)
        first_let = word[0].downcase

        if ["a", "e", "i", "o", "u"].include?(first_let)
            "#{word}way"
        else
            #split word at first instance of vowel
            #swap first and second part of word and add 'ay'
            arr1 = word.split /([aeiou].*)/
            arr2 = arr1[1] + arr1[0] + "ay"
            arr2
        end
    end
    
    def pig_sent(sent)
        sent_new = sent.split(" ")
        sent_new = sent_new.map{|word| pig_one_word(word)}
        sent_new.join(" ")
    end 

    def piglatinize(text)
        if text.split(" ").count == 1
            pig_one_word(text)
        else
            pig_sent(text)
        end
    end  

end 