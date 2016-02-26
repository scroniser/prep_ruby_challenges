def counting_game(n,players)
  people = (1..players).to_a
  count = 1
  (count..n).each do |x|
    puts "Person #{people[0]} says '#{x}'"
    if x % 7 == 0
      people.reverse!
    elsif x % 11 == 0
      people.rotate!(2)
    else
      people.rotate!
    end
  end
end

#test
counting_game(100, 7)