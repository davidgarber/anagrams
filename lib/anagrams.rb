class String
  define_method(:anagrams) do |arg1|
    sorted_args = [arg1.chars.sort.join]

    phrase = self
    phrase_words = phrase.split(' ')

    output = []

    phrase_words.each do |word|
      sorted_word = word.chars.sort().join()

      if sorted_args.include?(sorted_word)
        output.push(word)

      elsif output.push("no anagram")
      end
    end
    output
  end
end
