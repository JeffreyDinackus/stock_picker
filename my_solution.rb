
def stock_picker (price_trend)



pointer = price_trend[0]
profit = []
  # if price_trend[0] < price_trend[1]
  #   pointer += price_trend[1] - price_trend[0]
  # end


  profit.append(0)

  if price_trend[1] > price_trend[0]

  pointer = [0, price_trend[1] - price_trend[0]].max if price_trend[1] > price_trend[0]

    profit.append(pointer)

  end

  price_trend.each_cons(2).with_index do |(price, next_price), index|

    if next_price != nil
      # if price == next_price

      if price < next_price
        if pointer == -1
          pointer = 0
        end
        pointer += next_price - price
      elsif price > next_price
        pointer = -1
      end
    end
    profit.append(pointer)
  end

  pointer = 0
  final_day = [0,0]

  max = profit.max
  # p profit
  prev = 0
  profit.each_with_index do |price, index|
  if price == max
    final_day[1] = index
    break
  end

  if price == -1

    final_day[0] = index
  end

  prev = price
end
  final_day




end



p stock_picker([17, 3, 6, 9, 15, 8, 5, 1, 10])
