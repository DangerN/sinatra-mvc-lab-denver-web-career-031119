class PigLatinizer

  def piglatinize(text)
    # binding.pry
    text.split(" ").map do |word|
      if word.start_with?('a','e','i','o','u','A','E','I','O','U')
        word + 'way'
      else
        while !word.start_with?('a','e','i','o','u','A','E','I','O','U')
          word = word + word.chars.first
          word = word.reverse.chop.reverse
        end
        word = word + 'ay'
      end
    end.join(" ")

  end
end
