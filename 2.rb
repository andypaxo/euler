total = 0
last_val = 1
curr_val = 1
begin
	total += (curr_val % 2 == 0) ? curr_val : 0
	curr_val, last_val = curr_val + last_val, curr_val
end while curr_val < 4000000
p total

# 4613732