array = []
mutex = Mutex.new

10.times.map do 
		Thread.new do
				mutex.synchronize do # синхронізація й блокування
						10000.times do
								array << nil 
						end
				end	 
		end	
end.each(&:join)	

puts array.size