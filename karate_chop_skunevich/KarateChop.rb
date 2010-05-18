	def chop(int, array_of_int)
		if array_of_int.size == 0 then
			return -1;
		end
		return chopWithPosition(int, array_of_int, 0, array_of_int.size-1)
	end

	def chopWithPosition(int, array_of_int, startPosition, endPosition)
		if startPosition > endPosition then
			return -1;
		end
		if startPosition == endPosition then
			if array_of_int.at(startPosition) == int then
				return startPosition
			else
				return -1;
			end
		end
		
		middle = (startPosition + endPosition) / 2
		value = array_of_int.at(middle)
		if value == int then
			return middle
		end
		if value > int
			return chopWithPosition(int, array_of_int, startPosition, middle)
		else
			return chopWithPosition(int, array_of_int, middle + 1, endPosition)
		end
	end