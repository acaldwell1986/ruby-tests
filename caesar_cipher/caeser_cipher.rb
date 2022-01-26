def caesar_cipher(word, shift)
  word_array = word.chars
  return_array = []

  while shift > 26 do
    shift -= 26
  end

  p word_array
  word_array.each_with_index do |t, idx|
    char_val = word_array[idx].ord 
    value = word_array[idx].ord + shift                         
    
    if char_val.between?(65,90)

      if value <= 90
        return_array << char_val + shift
      elsif value > 90 && char_val <= 90
        temp = 91 - char_val
        temp2 = shift - temp 
        char_val = 65 + temp2
        return_array << char_val
      end

    elsif char_val.between?(97,122)
      if value <= 122
        return_array << char_val + shift
      elsif value > 122 && char_val <= 122
        temp = 123 - char_val
        temp2 = shift - temp 
        char_val = 97 + temp2

        return_array << char_val
      end
    else
      return_array << char_val
    end
  end

    new_array = []
    return_array.each do |element|
      new_array << element.chr
    end
    return new_array.join("")

end