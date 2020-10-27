class PigLatinizer 
    attr_reader :text
  
def piglatinize(word)
  pig_latin(word)
end

# def to_pig_latin(string)
#   pig(string)
# end

def pig_latin(sentence)
  alphabet = ('a'..'z').to_a + ('A'..'Z').to_a
  vowels =  ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U",]
  consonants = alphabet - vowels

  translation = []
    input = sentence.split(' ') 
      input.each do |word|
          if word.length < 2
             translation << word + "way" 
          elsif vowels.include?(word[0])
             translation <<  word + "way"
          elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
             translation <<  word[3..-1] + word[0..2] + 'ay'
          elsif consonants.include?(word[0]) && consonants.include?(word[1])
             translation <<  word[2..-1] + word[0..1] + 'ay'
          elsif consonants.include?(word[0])
             translation <<  word[1..-1] + word[0] + 'ay'
          else 
             translation <<  word + '?'
          end
      end 
  translation.join(' ')
end

#     def piglatinize(word)
#         vowelless_word = word.split(/[aeiou]/)
#         # binding.pry 
#         if Array(vowelless_word[0]).length > 1
#             consonant_blend = (vowelless_word[0])
#             subtract_first_phoneme = (word.split("") - consonant_blend.split(""))
#         else 
#             subtract_first_phoneme = (word.split("") - Array(vowelless_word[0]))
#         end
        
#         first_phoneme = Array(vowelless_word[0])
#             #(word.split("") - subtract_first_phoneme)

#         vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
#         if vowels.include?(word) && word.length == 1
#             (word + "way") 
#         elsif vowels.include?(first_phoneme) 
#              (word + "way") 
#         else 
#             # binding.pry
#             (subtract_first_phoneme.join + first_phoneme.join + "ay")

#         end
#     end

#     def to_pig_latin(text)
#         sentence_to_words = text.split(" ")
#         sentence_to_words.map! do |word|
#             piglatinize(word)
#         end
#         sentence_to_words.join(" ")
#     end
# end
end 
    