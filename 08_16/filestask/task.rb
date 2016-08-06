input = File.open "task1.txt", "r"
summary = 0
while (line = input.gets)
    lineArray = line.split(",")
    value = lineArray[1].to_i
    summary = summary + value
end
input.close

puts "Profit for the year #{summary}"