class PigLatinizer

    def piglatinize(phrase)
        alpha = [*('a'..'z'), *('A'..'Z')]
        vowels = %w[a e i o u A E I O U]
        consonants = alpha - vowels

        word_array = phrase.split(" ")
      
        piggy_words = word_array.map do |str|
            if vowels.include?(str[0])
            str + 'way'
            elsif consonants.include?(str[0]) && consonants.include?(str[1]) && consonants.include?(str[2])
                str[3..-1] + str[0..2] + 'ay'
            elsif consonants.include?(str[0]) && consonants.include?(str[1])
            str[2..-1] + str[0..1] + 'ay'
            elsif consonants.include?(str[0])
            str[1..-1] + str[0] + 'ay'
            else
            str
            end
        end

        piggy_words.join(" ")
    end
   
end