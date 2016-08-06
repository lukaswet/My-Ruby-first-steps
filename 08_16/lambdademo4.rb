add_10 = lambda { |x| x + 10 }
add_20 = lambda { |x| x + 20 }
sub_5 = lambda { |x| x - 5 }

balance = 1000

hh = { 111 => add_10, 222 => add_10, 333 => add_10, 444 => add_20,
		555 => add_20, 666 => sub_5, 777 => add_20, 888 => add_10,
			999 => add_20 }
loop do

	x = rand(110..1000)
	puts "Combination: #{x}"

	if hh[x]
		f = hh[x]
		balance = f.call balance
		puts "Lambda called"
	else
		balance = sub_5.call balance
	end

	puts "Balance: #{balance}"
	puts "Press Enter to continue"
	gets

end