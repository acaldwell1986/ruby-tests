# Build a method #bubble_sort that takes an array and returns a sorted array. 
# It must use the bubble sort methodology (using #sort would be pretty pointless, 
# wouldn’t it?).

# two test arrays to sort
numbers = [4,3,78,2,0,2]
numbers2 = [17,3,6,9,15,8,6,1,10]

def bubblesort(numbers)
hash_positions = []

  numbers.each_with_index do |element, i|
    
    k = 0
    for k in i+1...numbers.length

      if numbers[i] > numbers[k]
        temp = numbers[k]
        numbers[k] = numbers[i]
        numbers[i] = temp
      end
    end
  end
  
return numbers
end

p bubblesort(numbers) 
p bubblesort(numbers2)