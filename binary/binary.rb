class Binary
	def initialize(num)
		@num = num
	end

	def to_binary
		array = []
		until @num == 0
			array << @num%2
			@num = @num/2
		end
		array.reverse
	end
end

Binary.new(2).to_binary
