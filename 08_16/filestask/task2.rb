input = File.open "task1.txt", "r"
summary = 0
while (line = input.gets)
    lineArray = line.split(",")
    value = lineArray[1].to_i
    month_6_count += log10
    if month_6_count == 6
    	puts "Profit for the 6 months #{summary}"
    end
end
input.close

puts "Profit for the year #{summary}"