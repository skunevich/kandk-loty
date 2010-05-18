class KarateChopTwo
  def chop(number_to_find, numbers)
    start_index = 0
    end_index = numbers.size - 1
    midpoint_index = calculate_midpoint start_index, end_index 

    number_is_found = false
    found_index = -1
    while !number_is_found
      previous_midpoint = midpoint_index
      number_at_midpoint = numbers[midpoint_index]
      if number_at_midpoint.nil?
        break
      end

      if number_to_find == number_at_midpoint
        number_is_found = true
        found_index = midpoint_index
      elsif number_to_find == numbers[start_index]
        number_is_found = true
        found_index = start_index
      elsif number_to_find == numbers[end_index]
        number_is_found = true
        found_index = end_index
      elsif number_to_find < number_at_midpoint
        end_index = midpoint_index
        midpoint_index = calculate_midpoint start_index, end_index
      elsif number_to_find > number_at_midpoint
        start_index = midpoint_index
        midpoint_index = calculate_midpoint start_index, end_index
      else
        break
      end

      if previous_midpoint == midpoint_index
        break
      end
    end

    found_index
  end

  def calculate_midpoint(a, b)
    (a + b) / 2
  end
end
