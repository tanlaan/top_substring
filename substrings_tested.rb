def substrings(phrase, word_list)
  matches = {}
#  word_list.each do |word|
#    if phrase == word 
#      matches[phrase] = 1
#    end
#  end
  phrase.split('').map do |char|
    if word_list.include? char
      if matches[char]
        matches[char] += 1
      else
        matches[char] = 1
      end
    end 
  end
  matches
end
