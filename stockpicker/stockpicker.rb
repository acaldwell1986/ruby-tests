stocks = [17,3,6,9,15,8,6,1,10]

def stock_picker(prices)
  hash_positions = []

  prices.each_with_index do |element, i|
    k = 0
    for k in i+1...prices.length
      temp = prices[i] - prices[k]
      hash_positions.push({result: temp, position: [i,k]})
    end
  end

return hash_positions.min_by{|k| k[:result]}[:position]
end

p stock_picker(stocks) # returns [1,4]  $15 - $3 = $12 profit
