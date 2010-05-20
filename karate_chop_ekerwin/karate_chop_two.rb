class KarateChopTwo
  def chop(number_to_find, numbers)
    found_index = -1
    start_index = 0
    end_index = numbers.size - 1
    midpoint_index = calculate_midpoint start_index, end_index 

    while end_index - start_index > 1
      number_at_midpoint = numbers[midpoint_index]

      if number_to_find == numbers[midpoint_index]
        found_index = midpoint_index
        break
      elsif number_to_find < number_at_midpoint
        end_index = midpoint_index
        midpoint_index = calculate_midpoint start_index, end_index
      elsif number_to_find > number_at_midpoint
        start_index = midpoint_index
        midpoint_index = calculate_midpoint start_index, end_index
      end
    end

    if number_to_find == numbers[start_index]
      found_index = start_index
    elsif number_to_find == numbers[end_index]
      found_index = end_index
    end

    found_index
  end

  def calculate_midpoint(a, b)
    (a + b) / 2
  end
end
