total = 0
(1..999).each do |x|
	total += (x % 3 == 0 or x % 5 == 0) ? x : 0
end
p total