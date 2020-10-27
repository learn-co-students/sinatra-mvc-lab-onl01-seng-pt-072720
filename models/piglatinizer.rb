class PigLatinizer

    attr_accessor :user_input 

    def initialize
    end

    def piglatinize(user_phrase) 
        array = user_phrase.split(" ")
        latin_array = []
        array.each do |word|
            new_array = word.split(/([aeiou].*)/)
            if word.start_with?(/[aeiouAEIOU]/)
                latin_array << "#{word}way"
            else 
            latin_array << "#{new_array[1]}#{new_array[0]}ay"
            end
        end
        latin_array.join(" ")
    end


end
