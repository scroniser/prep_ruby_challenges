def power (base, exponent)
  newNum = 1
  for i in 1..exponent
    newNum *= base
  end
  return newNum
end

#test
puts power 3,4
