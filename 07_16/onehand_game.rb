hh = {
	111 => 10,
	222 => 20,
	333 => 30,
	444 => 0,
	555 => 50,
	666 => 66,
	777 => 777,
	888 => 80,
	999 => 99
}

balance = 100

loop do

		puts "Press Enter to play"
		gets

		a = rand(100..999)

		if hh[a]
				balance = balance + hh[a]
		else 
				balance = balance - 1
		end				

		puts "Your current combination is: #{a}"
		puts "Your balance is #{balance} dollars"

end	