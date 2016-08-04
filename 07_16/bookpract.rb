def show_book book
	puts "============================================<br>"
	book.keys.each do |key|
		age = book[key]
		puts "<i>Name</i>: #{key}, <i>age</i>: <b>#{age}</b> <br>"
	end	
	puts "============================================<br>"
end

book1 = { 'Lukas' => 44, 'Lesik' => 43, 'Lemberg' => 55 }
# show_book book1

book2 = { 'Susy' => 77, 'Sammy' => 12 }
# show_book book2

book = book1.merge book2

puts "<body>"

show_book book

# Або так:
# book1.merge! book2
# show book1