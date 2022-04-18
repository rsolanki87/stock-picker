def stock_picker(stock)
    result = []

    if stock.size < 2
        return
    else
        buy_day = 0
        sell_day = 0
        max_profit = 0

        stock.each_with_index do |buy, index|
            while (index < stock[index - 1].size)
                if ((buy - stock[index]) < max_profit)
                    max_profit = buy - stock[index]
                    buy_day = stock.index(buy)
                    sell_day = index
                end
                index += 1
            end
        end

        result = [buy_day, sell_day]
    end
end

puts stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])