def is_prime val
	(1..(val/2+1)).each do |divisor|
		if (val % divisor == 0)
			return false
		end
	end
	true
end

target = 600851475143
(1..(target/2+1)).each do |val|
	if target % val == 0 and is_prime val
		answer = val
		p answer
	end
	if target % 4005676500 == 0
		print '='
	end
end

p answer