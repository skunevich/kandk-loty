class KarateChopOne
  def chop(number_to_find, numbers)
    chop_search number_to_find, numbers, 0, numbers.size - 1
  end

  def chop_search number_to_find, numbers, start_index, end_index
    if start_index > end_index
      -1
    elsif start_index == end_index
      if number_to_find == numbers[end_index]
        end_index
      else
        -1
      end
    else
      midpoint = (start_index + end_index) / 2
      if number_to_find == numbers[midpoint]
        midpoint
      elsif number_to_find < numbers[midpoint]
        chop_search number_to_find, numbers, start_index, midpoint
      else
        chop_search number_to_find, numbers, midpoint + 1, end_index
      end
    end
  end
end
