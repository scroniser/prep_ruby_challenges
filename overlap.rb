def overlap(rect1, rect2)
	rect1Coords = rectCoords(rect1[0],rect1[1])
	rect2Coords = rectCoords(rect2[0],rect2[1])
	test = false
	rect1Coords.each do |x|
		rect2Coords.each do |y|
			if x == y
				test = true
				break
			end
		end
	end
	return test
end

def rectCoords(start,fin)
	a = start[0]
	b = fin[0]
	c = start[1]
	d = fin[1]
	arr = []
	z = []

	for y in c...d
		for x in a...b
			arr.push([a, x])
		end
		a+=1
	end
	return arr
end

#tests
puts overlap( [ [0,0],[3,3] ], [ [1,1],[4,5] ] ) #=> true
puts overlap( [ [0,0],[1,4] ], [ [1,1],[3,2] ] ) #=> false
puts overlap( [ [2,9],[8,10] ], [ [7,4],[9,6] ] ) #=> true