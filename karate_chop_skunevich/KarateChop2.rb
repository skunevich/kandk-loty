class KarateChop2
	def chop(int, array_of_int)
		if array_of_int.size == 0 
			-1;
		end
		small = 0
		large = array_of_int.size
		while true
			if small >= large
				return -1
			end
			middle = (small + large) / 2
			if int == array_of_int.at(middle)
				return middle
			end
			if int < array_of_int.at(middle)
				large = middle
			end
			if int > array_of_int.at(middle)
				small = middle + 1
			end
		end
	end
end