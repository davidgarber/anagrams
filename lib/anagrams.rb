class String
  define_method(:anagrams) do |arg1, arg2, arg3|
    sorted_args = [arg1.chars.sort.join, arg2.chars.join, arg3.chars.join]

    phrase = self
    phrase_words = phrase.split(' ')

    output = []

    phrase_words.each do |word|
      sorted_word = word.chars.sort().join()

      if sorted_args.include?(sorted_word)
        output.push(word)
      end
    end
    output
  end
end
