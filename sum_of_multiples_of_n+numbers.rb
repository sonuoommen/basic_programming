def sum_of_multiples(*numbers, range)
	a = Array.new
	numbers.each do |i|
		a.push (range).select { |x| x % i == 0 }
	end
	puts a.flatten.uniq.inject(0){|sum, x| sum += x}
end

sum_of_multiples(2,0..1000)