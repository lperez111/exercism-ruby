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
		
	end

	private

	def is_num?
		@num == @num.to_i
	end
end

Binary.new(9).to_binary
