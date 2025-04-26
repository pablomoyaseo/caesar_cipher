def stock_picker(prices)
  # Initialize variables to track the best buying and selling opportunities
  min_price = prices[0]      # Start with first day's price as minimum
  min_day = 0                # Track day of minimum price
  max_profit = 0             # Track maximum profit found
  best_days = [0, 0]         # Track best [buy_day, sell_day] pair

  prices.each_with_index do |current_price, current_day|
    # Check if we found a new minimum price
    if current_price < min_price
      min_price = current_price
      min_day = current_day
    # Check if selling at current price gives better profit than before
    elsif (current_price - min_price) > max_profit
      max_profit = current_price - min_price
      best_days = [min_day + 1, current_day + 1]
    end 
  end

  # Return the best days [buy_day, sell_day]
  best_days
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
