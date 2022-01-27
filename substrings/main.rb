# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

#Example dictionary and word values
example_dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
word = "Howdy partner, sit down! How's it going?"

#function that returns the hash
def substrings(word, dictionary)
  word = word.downcase
  word_array = []
  match_array = []

  #creates a word_array with every possible combination of words from the given word argument
  i = word.length
  until i <= 0 do
    word_array << word[0..i-1]
    i -= 1
    if word.length > 0 && i == 0
      word[0] = ''
      i = word.length
    end
  end

  #performs a comparison between the dictionary and the word_array and stores any matches in match_array
  dictionary.each do |element|
    word_array.each do |fragment|
      if element == fragment
        match_array << fragment
      end
    end
  end

  #reduce function returns the matched fragments and the count of each
  word_hash = match_array.reduce(Hash.new(0)) do |fragment, count|
    fragment[count] += 1
    fragment
  end
end

#example function call
puts substrings(word, example_dictionary)