def uniques(array)
	array.each_with_index do |x, index1|
		array.each_with_index do |y, index2|
			if x == y && index1 != index2
				array.delete_at(index2)
			end
		end
	end
	return array
end

#test
print uniques([1,5,"frog", 2,1,3,"frog"])