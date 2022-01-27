example_dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

word = "below"
word_save = word[0..word.length]
word_array = []

# takes word and saves each possible combination of words into word_array for comparison
# mutates the original word, so the word_save variable is used to retain the value in case it is needed
i = word.length
until i <= 0 do
  word_array << word[0..i-1]
  i -= 1

  if word.length > 0 && i == 0
    word[0] = ''
    i = word.length
  end
end

#write function to compare both arrays, if true return count of words in the dictionary




puts word_array
puts word_save