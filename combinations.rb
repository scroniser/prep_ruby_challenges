def combinations(array1, array2)
	newArray = []
	array1.each do |x|
		array2.each do |y|
			newArray.push(x + y)
		end
	end
	return newArray
end

#test
puts combinations(["on","in"],["to","rope"])