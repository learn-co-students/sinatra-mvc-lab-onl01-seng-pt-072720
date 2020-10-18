class PigLatinizer 
    def piglatinize(sentence)
        words = sentence.split(" ")
        new_sentence = []
        words.each do |word|
            if word[0].scan(/[aeoui]/i).empty? && word[1].scan(/[aeoui]/i).empty? && word[2].scan(/[aeoui]/i).empty?
                new_sentence << "#{word[3..-1]}#{word[0]}#{word[1]}#{word[2]}ay"
            elsif word[0].scan(/[aeoui]/i).empty? && word[1].scan(/[aeoui]/i).empty?
                new_sentence << "#{word[2..-1]}#{word[0]}#{word[1]}ay"
            elsif word[0].scan(/[aeoui]/i).empty?
                new_sentence << "#{word[1..-1]}#{word[0]}ay"
            else 
                new_sentence << "#{word}way"
            end 
        end 
        new_sentence.join(" ")
    end 
end 

# class PigLatinizer

#     def piglatinize(input_str)
#       input_str.split(" ").map{ |word| piglatinize_word(word)}.join(" ")
#     end
  
#     private
  
#     def vowel?(char)
#       char.match(/[aAeEiIoOuU]/)
#     end
  
#     def piglatinize_word(word)
#       # word starts with vowel
#       if vowel?(word[0])
#         word + "way"
#       else
#       # word starts with one or more consonants
#         vowel_index = word.index(/[aAeEiIoOuU]/)
#         consonants = word.slice(0..vowel_index-1)
#         word_leftover = word.slice(vowel_index..word.length)
#         word_leftover + consonants + "ay"
#       end
#     end
  
# end