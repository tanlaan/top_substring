def substring(phrase, dictionary)
  # split phrase into array of words
  # create dictionary to return
  # iterate over each word
  #   create two variables, i and j
  #   i = current substring marker
  #   j = iterate from i up to word.length
  #   check if word.splice(i, j) is in dictionary
  #     true: check if word in return dictionary
  #       true: += 1
  #       false: = 1

  words = phrase.split(' ')
  word_count = {}
  words.each do |word|
    i = 0
    while i <= word.length do
      n = 1
      while n <= word.length - i do
        puts word.slice(i, n).downcase
        if dictionary.include? word.slice(i, n).downcase
          if word_count[word.slice(i, n).downcase]
            word_count[word.slice(i, n).downcase] += 1
          else
            word_count[word.slice(i, n).downcase] = 1
          end
        end
        n += 1
      end
      i += 1
    end
  end
  word_count
end
