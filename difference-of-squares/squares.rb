class Squares
	def initialize(num)
		@num = num
	end

	def square_of_sums
		sum = (1..@num).inject(:+)
		sum**2
	end

	def sum_of_squares
		
	end
	
	def difference
		
	end
end