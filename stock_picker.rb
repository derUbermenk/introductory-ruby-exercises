# @param price_arr [Array] 
# @return [Array]
def stock_picker(price_arr)

    max_indx = price_arr.find_index(price_arr.max()) 
    min_indx = price_arr.find_index(price_arr.min())
	
	if (max_indx > min_indx)
		[min_indx, max_indx]
	else
		# @type [Hash]
		profits = Hash.new
		last_day = price_arr.length - 1
		price_arr.each_with_index { |price, day|
			unless (day == last_day)
				# @type [Array] array containing the prices for the next days excluding current and past dates
				next_day_prices =  price_arr[++day..]
				# @type [Integer] the index of the day that will lead to highest yield given price at current day
				max_day = price_arr.find_index(next_day_prices.max)
				# @type [Integer]
				profit = price_arr[max_day] - price
				# @type [Array]
				day_pair = [day, max_day]

				profits[day_pair] = profit
			end
		}
		profits.max_by{|key,value| value}[0]
	end
end

