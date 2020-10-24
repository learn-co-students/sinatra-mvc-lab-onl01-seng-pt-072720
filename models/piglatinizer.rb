class PigLatinizer
    attr_reader :text

    def initialize
        @text = text
    end

    def piglatinize(text)
        words = []
        text.split(" ").each do |t| 
            if t.start_with?(/[aeiouAEIOU]/)
               words << "#{t}way"
            else
                split_text = t.split(/([aeiou].*)/)
                words << "#{split_text[1]}#{split_text[0]}ay"
            end
        end

        words.join(' ')

    end

    


end