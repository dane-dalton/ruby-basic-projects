def stock_picker(days)
  biggest_diff = 0
  first_day = 0
  second_day = 0
  days.each_with_index do |day, day_index|
    for i in (day_index..days.length - 1)
      temp_diff = days[i] - day
      if biggest_diff < temp_diff
        biggest_diff = temp_diff
        first_day = day_index + 1
        second_day = i + 1
      end
    end
  end
  puts "For the biggest profit margin of $#{biggest_diff}, you should have bought on day #{first_day} and sold on day #{second_day}."
end

price_on_each_day = [1, 6, 3, 5, 17, 1, 4, 20]

stock_picker(price_on_each_day)