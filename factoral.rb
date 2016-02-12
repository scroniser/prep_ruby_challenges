def factoral(num)
	finalNum = 1
	for i in 1..num
		finalNum *= i
	end
	return finalNum
end

#test
puts factoral 5
