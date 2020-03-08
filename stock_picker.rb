def stock_picker(price_array)
    earning_array = []
    calculation_array = []
    final_result = []
    price_array.each_with_index do |item, index|
        price_array.each_with_index do |subitem, subindex|
            if subindex > index
                earning_array.push(item - subitem)
                calculation_array.push(item.to_s + "," + subitem.to_s)
            end
        end
    end
    solution_at = earning_array.index(earning_array.min)
    buy_sell_array = calculation_array[solution_at].split(",")
    buy_sell_array.each_with_index do |item, index|
        final_result.push(price_array.index(item.to_i))
    end
    puts final_result
end

stock_picker([17,3,6,9,15,8,6,1,10])