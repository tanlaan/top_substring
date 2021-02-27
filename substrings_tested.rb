def substrings(phrase, word_list)
  matches = {}

#  phrase.split('').map do |sub|
  word_list.each do |word|
    (0..(phrase.length - word.length)).each do |i|
      sub = phrase.slice(i, word.length)
      if word_list.include? sub
        if matches[sub]
          matches[sub] += 1
        else
          matches[sub] = 1
        end
      end 
    end
  end
  matches
end
