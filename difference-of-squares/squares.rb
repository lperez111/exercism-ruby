def squares(num)
	sum = (1..num).map{ |x| x**2 }.inject(:+)
	square = (1..num).inject(:+)**2
	square - sum
end

squares(10)
