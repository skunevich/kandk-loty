class KarateChop2
	def chop(int, array_of_int)
		if array_of_int.size == 0 
			-1;
		end
		chopWithPosition(int, array_of_int, 0, array_of_int.size-1)
	end

	def chopWithPosition(int, array_of_int, startPosition, endPosition)
		if startPosition > endPosition 
			return -1;
		end
		if startPosition == endPosition 
			if array_of_int.at(startPosition) == int 
				return startPosition
			else
				return -1;
			end
		end

		middle = (startPosition + endPosition) / 2
		value = array_of_int.at(middle)
		if value == int 
			return middle
		end
		if value > int
			return chopWithPosition(int, array_of_int, startPosition, middle)
		else
			return chopWithPosition(int, array_of_int, middle + 1, endPosition)
		end
	end
end