class PrimeGenerator
	def is_prime? val
		(2..(val/2+1)).each do |divisor|
			if (val % divisor == 0)
				return false
			end
		end
		true
	end

	def primes
		i = 1
		Enumerator.new do |result|
			while true
				result.yield i
				i += 1
				while (!is_prime? i)
					i += 1
				end
			end
		end
	end
end

target = 600851475143
primes = PrimeGenerator.new.primes
begin
	val = primes.next
	if target % val == 0
		answer = val
		puts "Found factor: #{answer}"
	end
end while val <= target / 2

puts "Largest factor is: #{answer}"