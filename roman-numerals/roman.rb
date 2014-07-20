require 'benchmark'
ROMAN_NUMERALS = {
	1000 => 'M',
	900	=> 'CM',
	500 => 'D',
	400 => 'CD',
	100 => 'C',
	90 => 'XC',
	50 => 'L',
	40 => 'XL',
	10 => 'X',
	9 => 'IX',
	5 => 'V',
	4 => 'IV',
	1 => 'I',
}

class Fixnum
	def to_roman
		num = self
    s = ''
    ROMAN_NUMERALS.each do |arabic, roman|
      while num >= arabic
        s << roman
        num -= arabic
      end
    end
    s
	end
end
puts 123123123123.to_roman
puts Benchmark.measure{ 123123123123.to_roman }
