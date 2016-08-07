input = File.open "task1.txt", "r"
summary = 0
month_6_count = 0
while (line = input.gets)
    lineArray = line.split(",")
    summary = lineArray[1].to_i
    month_6_count += 1
    if month_6_count == 6
    	puts "Profit for the 6 months #{summary}"
    end
end
input.close

puts "Profit for the year #{summary}"