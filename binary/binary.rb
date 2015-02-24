class Binary
	def initialize(num)
		@num = num
	end

	def to_binary
		array = []
		return 0 if is_num? == false
		until @num == 0
			array << @num%2
			@num = @num/2
		end
		array.reverse.join
	end

	def to_decimal
		sums = []
		array = @num.split('').reverse
			array.each_with_index do |n,index|
			x = n.to_i
			sums << x*2**index
			end
		sums.inject(:+)
	end

	private

	def is_num?
		@num == @num.to_i
	end
end

Binary.new('10001101000').to_decimal
