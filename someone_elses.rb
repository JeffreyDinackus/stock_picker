
def stock_picker (trend)

  profit = 0
  min_p = trend[0]
  min_i = 0

  days = [0,0]

  temp = 0

  max_profit = 0
  trend.each_with_index do |p, i|

    #finds min price
    if p < min_p
      min_p = p
      min_i = i
      next
    end
      prev = p

    if p - min_p > profit
      days = [min_i, i]
      profit = p - min_p
    end

  end
  days
end

p stock_picker([0,8,6,9,15,14,6,1,11])
