require 'thread'

class Cat
		def initialize
				@sleep = false
		end

		def sleep?
				@sleep	
		end		

		def sleep!
				puts "Sleeping ......"
				@sleep = true
		end
end	

cat = Cat.new
queue = Queue.new
queue << cat

5.times.map do
		Thread.new do
				begin
						cat_in_thread = queue.pop(true)
						cat.sleep!
				rescue ThreadError
						puts "No cat. Ok, continue!"
				end	
		end	
end.each(&:join)