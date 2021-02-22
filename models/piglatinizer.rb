class PigLatinizer
  # def initialize(words)
  #   @words = words
  # end

  def piglatinize(words)
    ready_words = words.split

    @piglatinized = []

    ready_words.each {|word|
      if word.match(/^[aeiou]/i)
        @piglatinized << word.concat("way")
      else
        @piglatinized << word.scan(/^([^a^e^i^o^u]*)([aeiou]\w*)/i)[0].reverse.join("").concat("ay")
      end
    }
    
    @piglatinized.join(" ")
  end
end