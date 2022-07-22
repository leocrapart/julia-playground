
# e6

function sum_of_squares(n)
	sum = 0
	for i in 1:n
		sum += i*i
	end
	sum
end

function square_of_sum(n)
	sum = 0
	for i in 1:n
		sum += i
	end
	sum*sum
end

function difference(n)
	square_of_sum(n) - sum_of_squares(n)
end


println(sum_of_squares(10))
println(square_of_sum(10))
println(difference(10))
println(difference(100))

# e6 solved

