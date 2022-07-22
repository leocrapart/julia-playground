
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


# println(sum_of_squares(10))
# println(square_of_sum(10))
# println(difference(10))
# println(difference(100))

# e6 solved



# e22

file = open("p022_names.txt")
lines = readlines(file)
names = split(lines[1], ",")
sorted_names = sort(names)

function without_double_quote(name)
	new_name_vector = []
	for i in 2:length(name)-1
		char = name[i]
		push!(new_name_vector, char)
	end
	join(new_name_vector)
end

values = Dict('A' => 1, 'B' => 2, 'C' => 3,
	'D' => 4, 'E' => 5, 'F' => 6,
	'G' => 7, 'H' => 8, 'I' => 9,
	'J' => 10, 'K' => 11, 'L' => 12,
	'M' => 13, 'N' => 14, 'O' => 15,
	'P' => 16, 'Q' => 17, 'R' => 18,
	'S' => 19, 'T' => 20, 'U' => 21,
	'V' => 22, 'W' => 23, 'X' => 24,
	'Y' => 25, 'Z' => 26)


function alphabetical_value(name)
	sum = 0
	for i in 1:length(name)
		char = name[i]
		sum += values[char]
	end
	sum
end



function solution(names)
	sum = 0
	for i in 1:length(names)
		name_with_double_quotes = names[i]
		name = without_double_quote(name_with_double_quotes)
		value = alphabetical_value(name)
		sum += value * i
	end
	sum
end



# println(names)
# println(sorted_names)
# println(values['A'])
# println(alphabetical_value("AARON"))
# println("AARON")
# println(sorted_names[1])
# println(without_double_quote(sorted_names[1]))
# println(solution(sorted_names))

# e22 solved





